
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int root_dir ;


 int PATH_MAX ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 int sysfs__sprintf_build_id (char*,char*) ;

__attribute__((used)) static int build_id_cache__kcore_buildid(const char *proc_dir, char *sbuildid)
{
 char root_dir[PATH_MAX];
 char *p;

 strlcpy(root_dir, proc_dir, sizeof(root_dir));

 p = strrchr(root_dir, '/');
 if (!p)
  return -1;
 *p = '\0';
 return sysfs__sprintf_build_id(root_dir, sbuildid);
}
