
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int dummy; } ;


 char* DSO__NAME_VDSO ;
 scalar_t__ asprintf (char**,char*,int ,char*,char*,char*,char*) ;
 int buildid_dir ;
 int free (char*) ;
 char* nsinfo__realpath (char const*,struct nsinfo*) ;

char *build_id_cache__cachedir(const char *sbuild_id, const char *name,
          struct nsinfo *nsi, bool is_kallsyms,
          bool is_vdso)
{
 char *realname = (char *)name, *filename;
 bool slash = is_kallsyms || is_vdso;

 if (!slash) {
  realname = nsinfo__realpath(name, nsi);
  if (!realname)
   return ((void*)0);
 }

 if (asprintf(&filename, "%s%s%s%s%s", buildid_dir, slash ? "/" : "",
       is_vdso ? DSO__NAME_VDSO : realname,
       sbuild_id ? "/" : "", sbuild_id ?: "") < 0)
  filename = ((void*)0);

 if (!slash)
  free(realname);

 return filename;
}
