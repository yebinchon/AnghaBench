
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {struct dnode* data; } ;
struct inode {int i_sb; } ;
struct hpfs_dirent {scalar_t__ down; scalar_t__ last; scalar_t__ first; } ;
struct dnode {int dummy; } ;
typedef int loff_t ;
typedef scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ last; } ;


 int FREE_DNODES_DEL ;
 scalar_t__ de_down_pointer (struct hpfs_dirent*) ;
 TYPE_1__* de_next_de (struct hpfs_dirent*) ;
 int delete_empty_dnode (struct inode*,scalar_t__) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int for_all_poss (struct inode*,int ,int,int) ;
 int get_pos (struct dnode*,struct hpfs_dirent*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 scalar_t__ hpfs_check_free_dnodes (int ,int ) ;
 int hpfs_delete_de (int ,struct dnode*,struct hpfs_dirent*) ;
 int hpfs_error (int ,char*,scalar_t__) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 int hpfs_pos_del ;
 int hpfs_pos_subst ;
 scalar_t__ move_to_top (struct inode*,scalar_t__,scalar_t__) ;

int hpfs_remove_dirent(struct inode *i, dnode_secno dno, struct hpfs_dirent *de,
         struct quad_buffer_head *qbh, int depth)
{
 struct dnode *dnode = qbh->data;
 dnode_secno down = 0;
 loff_t t;
 if (de->first || de->last) {
  hpfs_error(i->i_sb, "hpfs_remove_dirent: attempt to delete first or last dirent in dnode %08x", dno);
  hpfs_brelse4(qbh);
  return 1;
 }
 if (de->down) down = de_down_pointer(de);
 if (depth && (de->down || (de == dnode_first_de(dnode) && de_next_de(de)->last))) {
  if (hpfs_check_free_dnodes(i->i_sb, FREE_DNODES_DEL)) {
   hpfs_brelse4(qbh);
   return 2;
  }
 }
 for_all_poss(i, hpfs_pos_del, (t = get_pos(dnode, de)) + 1, 1);
 hpfs_delete_de(i->i_sb, dnode, de);
 hpfs_mark_4buffers_dirty(qbh);
 hpfs_brelse4(qbh);
 if (down) {
  dnode_secno a = move_to_top(i, down, dno);
  for_all_poss(i, hpfs_pos_subst, 5, t);
  if (a) delete_empty_dnode(i, a);
  return !a;
 }
 delete_empty_dnode(i, dno);
 return 0;
}
