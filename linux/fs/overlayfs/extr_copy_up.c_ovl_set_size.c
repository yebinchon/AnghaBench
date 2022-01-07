
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstat {int size; } ;
struct iattr {int ia_size; int ia_valid; } ;
struct dentry {int dummy; } ;


 int ATTR_SIZE ;
 int notify_change (struct dentry*,struct iattr*,int *) ;

__attribute__((used)) static int ovl_set_size(struct dentry *upperdentry, struct kstat *stat)
{
 struct iattr attr = {
  .ia_valid = ATTR_SIZE,
  .ia_size = stat->size,
 };

 return notify_change(upperdentry, &attr, ((void*)0));
}
