
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_journal_list {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int i_trans_id; struct reiserfs_journal_list* i_jl; } ;


 TYPE_1__* REISERFS_I (struct inode*) ;
 int __commit_trans_jl (struct inode*,unsigned int,struct reiserfs_journal_list*) ;
 int reiserfs_update_inode_transaction (struct inode*) ;

int reiserfs_commit_for_inode(struct inode *inode)
{
 unsigned int id = REISERFS_I(inode)->i_trans_id;
 struct reiserfs_journal_list *jl = REISERFS_I(inode)->i_jl;





 if (!id || !jl) {
  reiserfs_update_inode_transaction(inode);
  id = REISERFS_I(inode)->i_trans_id;

 }

 return __commit_trans_jl(inode, id, jl);
}
