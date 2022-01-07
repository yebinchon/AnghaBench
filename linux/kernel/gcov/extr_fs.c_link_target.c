
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,char const*,char const*,...) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *link_target(const char *dir, const char *path, const char *ext)
{
 char *target;
 char *old_ext;
 char *copy;

 copy = kstrdup(path, GFP_KERNEL);
 if (!copy)
  return ((void*)0);
 old_ext = strrchr(copy, '.');
 if (old_ext)
  *old_ext = '\0';
 if (dir)
  target = kasprintf(GFP_KERNEL, "%s/%s.%s", dir, copy, ext);
 else
  target = kasprintf(GFP_KERNEL, "%s.%s", copy, ext);
 kfree(copy);

 return target;
}
