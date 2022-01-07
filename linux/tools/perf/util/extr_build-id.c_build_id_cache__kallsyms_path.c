
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DSO__NAME_KALLSYMS ;
 int F_OK ;
 int access (char*,int ) ;
 char* buildid_dir ;
 int snprintf (char*,size_t,char*,char*,char*,char const*) ;

char *build_id_cache__kallsyms_path(const char *sbuild_id, char *bf,
        size_t size)
{
 bool retry_old = 1;

 snprintf(bf, size, "%s/%s/%s/kallsyms",
   buildid_dir, DSO__NAME_KALLSYMS, sbuild_id);
retry:
 if (!access(bf, F_OK))
  return bf;
 if (retry_old) {

  snprintf(bf, size, "%s/%s/%s",
    buildid_dir, DSO__NAME_KALLSYMS, sbuild_id);
  retry_old = 0;
  goto retry;
 }

 return ((void*)0);
}
