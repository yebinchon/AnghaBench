
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;
struct nsinfo {int dummy; } ;


 int ENOMEM ;
 char* build_id_cache__cachedir (int *,char const*,struct nsinfo*,int,int) ;
 int errno ;
 int free (char*) ;
 struct strlist* lsdir (char*,int ) ;
 int lsdir_no_dot_filter ;

int build_id_cache__list_build_ids(const char *pathname, struct nsinfo *nsi,
       struct strlist **result)
{
 char *dir_name;
 int ret = 0;

 dir_name = build_id_cache__cachedir(((void*)0), pathname, nsi, 0, 0);
 if (!dir_name)
  return -ENOMEM;

 *result = lsdir(dir_name, lsdir_no_dot_filter);
 if (!*result)
  ret = -errno;
 free(dir_name);

 return ret;
}
