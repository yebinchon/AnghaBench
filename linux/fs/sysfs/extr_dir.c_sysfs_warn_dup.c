
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int GFP_KERNEL ;
 int PATH_MAX ;
 int dump_stack () ;
 int kernfs_path (struct kernfs_node*,char*,int ) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int pr_warn (char*,char*,char const*) ;

void sysfs_warn_dup(struct kernfs_node *parent, const char *name)
{
 char *buf;

 buf = kzalloc(PATH_MAX, GFP_KERNEL);
 if (buf)
  kernfs_path(parent, buf, PATH_MAX);

 pr_warn("cannot create duplicate filename '%s/%s'\n", buf, name);
 dump_stack();

 kfree(buf);
}
