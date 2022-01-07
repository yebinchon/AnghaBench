
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad_buffer_head {int dummy; } ;
struct inode {int i_sb; } ;
struct hpfs_dirent {scalar_t__ down; } ;
struct dnode {int up; scalar_t__ root_dnode; } ;
typedef int loff_t ;
typedef int dnode_secno ;


 int de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 scalar_t__ hpfs_de_as_down_as_possible (int ,int) ;
 int hpfs_error (int ,char*,int,...) ;
 struct dnode* hpfs_map_dnode (int ,scalar_t__,struct quad_buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct hpfs_dirent* map_nth_dirent (int ,int,int,struct quad_buffer_head*,struct dnode**) ;

struct hpfs_dirent *map_pos_dirent(struct inode *inode, loff_t *posp,
       struct quad_buffer_head *qbh)
{
 loff_t pos;
 unsigned c;
 dnode_secno dno;
 struct hpfs_dirent *de, *d;
 struct hpfs_dirent *up_de;
 struct hpfs_dirent *end_up_de;
 struct dnode *dnode;
 struct dnode *up_dnode;
 struct quad_buffer_head qbh0;

 pos = *posp;
 dno = pos >> 6 << 2;
 pos &= 077;
 if (!(de = map_nth_dirent(inode->i_sb, dno, pos, qbh, &dnode)))
  goto bail;


 if ((d = de_next_de(de)) < dnode_end_de(dnode)) {
  if (!(++*posp & 077)) {
   hpfs_error(inode->i_sb,
    "map_pos_dirent: pos crossed dnode boundary; pos = %08llx",
    (unsigned long long)*posp);
   goto bail;
  }

  if (d->down) {
   *posp = ((loff_t) hpfs_de_as_down_as_possible(inode->i_sb, de_down_pointer(d)) << 4) + 1;
  }

  return de;
 }


 if (dnode->root_dnode) goto bail;

 if (!(up_dnode = hpfs_map_dnode(inode->i_sb, le32_to_cpu(dnode->up), &qbh0)))
  goto bail;

 end_up_de = dnode_end_de(up_dnode);
 c = 0;
 for (up_de = dnode_first_de(up_dnode); up_de < end_up_de;
      up_de = de_next_de(up_de)) {
  if (!(++c & 077)) hpfs_error(inode->i_sb,
   "map_pos_dirent: pos crossed dnode boundary; dnode = %08x", le32_to_cpu(dnode->up));
  if (up_de->down && de_down_pointer(up_de) == dno) {
   *posp = ((loff_t) le32_to_cpu(dnode->up) << 4) + c;
   hpfs_brelse4(&qbh0);
   return de;
  }
 }

 hpfs_error(inode->i_sb, "map_pos_dirent: pointer to dnode %08x not found in parent dnode %08x",
  dno, le32_to_cpu(dnode->up));
 hpfs_brelse4(&qbh0);

 bail:
 *posp = 12;
 return de;
}
