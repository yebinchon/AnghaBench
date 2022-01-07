
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {TYPE_2__* s_root; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int i_lock; } ;
struct TYPE_5__ {int d_alias; } ;
struct TYPE_6__ {int d_lock; TYPE_1__ d_u; } ;


 int ENOMEM ;
 TYPE_3__* d_inode (TYPE_2__*) ;
 TYPE_2__* d_make_root (struct inode*) ;
 int hlist_del_init (int *) ;
 int ihold (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs_superblock_set_dummy_root(struct super_block *sb, struct inode *inode)
{

 if (sb->s_root == ((void*)0)) {
  sb->s_root = d_make_root(inode);
  if (sb->s_root == ((void*)0))
   return -ENOMEM;
  ihold(inode);
  spin_lock(&d_inode(sb->s_root)->i_lock);
  spin_lock(&sb->s_root->d_lock);
  hlist_del_init(&sb->s_root->d_u.d_alias);
  spin_unlock(&sb->s_root->d_lock);
  spin_unlock(&d_inode(sb->s_root)->i_lock);
 }
 return 0;
}
