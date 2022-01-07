
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {TYPE_2__ d_name; } ;


 scalar_t__ IS_ERR (char*) ;
 int NAME_MAX ;
 int PATH_MAX ;
 char* __getname () ;
 int __putname (char*) ;
 char* d_absolute_path (struct path const*,char*,int ) ;
 int strlcpy (char*,int ,int ) ;

const char *ima_d_path(const struct path *path, char **pathbuf, char *namebuf)
{
 char *pathname = ((void*)0);

 *pathbuf = __getname();
 if (*pathbuf) {
  pathname = d_absolute_path(path, *pathbuf, PATH_MAX);
  if (IS_ERR(pathname)) {
   __putname(*pathbuf);
   *pathbuf = ((void*)0);
   pathname = ((void*)0);
  }
 }

 if (!pathname) {
  strlcpy(namebuf, path->dentry->d_name.name, NAME_MAX);
  pathname = namebuf;
 }

 return pathname;
}
