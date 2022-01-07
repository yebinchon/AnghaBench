
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 scalar_t__ PATH_MAX ;
 char* file_path (struct file*,char*,scalar_t__) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 char* kstrdup (char*,int ) ;
 char* kstrdup_quotable (char*,int ) ;

char *kstrdup_quotable_file(struct file *file, gfp_t gfp)
{
 char *temp, *pathname;

 if (!file)
  return kstrdup("<unknown>", gfp);


 temp = kmalloc(PATH_MAX + 11, GFP_KERNEL);
 if (!temp)
  return kstrdup("<no_memory>", gfp);

 pathname = file_path(file, temp, PATH_MAX + 11);
 if (IS_ERR(pathname))
  pathname = kstrdup("<too_long>", gfp);
 else
  pathname = kstrdup_quotable(pathname, gfp);

 kfree(temp);
 return pathname;
}
