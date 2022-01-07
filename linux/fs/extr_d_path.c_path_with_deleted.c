
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;


 scalar_t__ d_unlinked (int ) ;
 int prepend (char**,int*,char*,int) ;
 int prepend_path (struct path const*,struct path const*,char**,int*) ;

__attribute__((used)) static int path_with_deleted(const struct path *path,
        const struct path *root,
        char **buf, int *buflen)
{
 prepend(buf, buflen, "\0", 1);
 if (d_unlinked(path->dentry)) {
  int error = prepend(buf, buflen, " (deleted)", 10);
  if (error)
   return error;
 }

 return prepend_path(path, root, buf, buflen);
}
