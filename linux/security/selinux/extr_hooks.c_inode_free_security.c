
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct superblock_security_struct {int isec_lock; } ;
struct inode_security_struct {int list; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct superblock_security_struct* s_security; } ;


 int list_del_init (int *) ;
 int list_empty_careful (int *) ;
 struct inode_security_struct* selinux_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void inode_free_security(struct inode *inode)
{
 struct inode_security_struct *isec = selinux_inode(inode);
 struct superblock_security_struct *sbsec;

 if (!isec)
  return;
 sbsec = inode->i_sb->s_security;
 if (!list_empty_careful(&isec->list)) {
  spin_lock(&sbsec->isec_lock);
  list_del_init(&isec->list);
  spin_unlock(&sbsec->isec_lock);
 }
}
