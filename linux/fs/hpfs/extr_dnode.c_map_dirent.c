
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_sb; int i_mode; } ;
struct hpfs_dirent {scalar_t__ down; int last; int namelen; int name; } ;
struct dnode {int dummy; } ;
typedef int dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;


 int S_ISDIR (int ) ;
 int de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_compare_names (int ,unsigned char const*,unsigned int,int ,int ,int ) ;
 int hpfs_error (int ,char*) ;
 struct dnode* hpfs_map_dnode (int ,int ,struct quad_buffer_head*) ;
 TYPE_1__* hpfs_sb (int ) ;
 scalar_t__ hpfs_stop_cycles (int ,int ,int*,int*,char*) ;

struct hpfs_dirent *map_dirent(struct inode *inode, dnode_secno dno,
          const unsigned char *name, unsigned len,
          dnode_secno *dd, struct quad_buffer_head *qbh)
{
 struct dnode *dnode;
 struct hpfs_dirent *de;
 struct hpfs_dirent *de_end;
 int c1, c2 = 0;

 if (!S_ISDIR(inode->i_mode)) hpfs_error(inode->i_sb, "map_dirent: not a directory\n");
 again:
 if (hpfs_sb(inode->i_sb)->sb_chk)
  if (hpfs_stop_cycles(inode->i_sb, dno, &c1, &c2, "map_dirent")) return ((void*)0);
 if (!(dnode = hpfs_map_dnode(inode->i_sb, dno, qbh))) return ((void*)0);

 de_end = dnode_end_de(dnode);
 for (de = dnode_first_de(dnode); de < de_end; de = de_next_de(de)) {
  int t = hpfs_compare_names(inode->i_sb, name, len, de->name, de->namelen, de->last);
  if (!t) {
   if (dd) *dd = dno;
   return de;
  }
  if (t < 0) {
   if (de->down) {
    dno = de_down_pointer(de);
    hpfs_brelse4(qbh);
    goto again;
   }
  break;
  }
 }
 hpfs_brelse4(qbh);
 return ((void*)0);
}
