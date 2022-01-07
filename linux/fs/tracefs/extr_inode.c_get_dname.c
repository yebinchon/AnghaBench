
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char* name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int GFP_KERNEL ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static char *get_dname(struct dentry *dentry)
{
 const char *dname;
 char *name;
 int len = dentry->d_name.len;

 dname = dentry->d_name.name;
 name = kmalloc(len + 1, GFP_KERNEL);
 if (!name)
  return ((void*)0);
 memcpy(name, dname, len);
 name[len] = 0;
 return name;
}
