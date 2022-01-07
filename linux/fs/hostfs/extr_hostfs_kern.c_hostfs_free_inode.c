
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int HOSTFS_I (struct inode*) ;
 int kfree (int ) ;

__attribute__((used)) static void hostfs_free_inode(struct inode *inode)
{
 kfree(HOSTFS_I(inode));
}
