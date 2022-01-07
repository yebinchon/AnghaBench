
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_sb_list; } ;
struct TYPE_2__ {int s_inode_list_lock; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void inode_sb_list_del(struct inode *inode)
{
 if (!list_empty(&inode->i_sb_list)) {
  spin_lock(&inode->i_sb->s_inode_list_lock);
  list_del_init(&inode->i_sb_list);
  spin_unlock(&inode->i_sb->s_inode_list_lock);
 }
}
