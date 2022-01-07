
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct dentry {TYPE_2__* d_sb; TYPE_1__ d_name; } ;
struct TYPE_4__ {int s_d_op; } ;


 int ENAMETOOLONG ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ NAME_MAX ;
 int d_add (struct dentry*,int *) ;
 int d_set_d_op (struct dentry*,int *) ;
 int simple_dentry_operations ;

struct dentry *simple_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 if (dentry->d_name.len > NAME_MAX)
  return ERR_PTR(-ENAMETOOLONG);
 if (!dentry->d_sb->s_d_op)
  d_set_d_op(dentry, &simple_dentry_operations);
 d_add(dentry, ((void*)0));
 return ((void*)0);
}
