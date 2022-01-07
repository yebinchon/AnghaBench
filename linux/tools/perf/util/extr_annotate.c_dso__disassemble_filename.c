
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {scalar_t__ symtab_type; char* long_name; scalar_t__ has_build_id; } ;
typedef int linkname ;


 scalar_t__ DSO_BINARY_TYPE__KALLSYMS ;
 int DSO__NAME_KALLSYMS ;
 int ENOMEM ;
 int PATH_MAX ;
 int R_OK ;
 int SBUILD_ID_SIZE ;
 int SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX ;
 int __symbol__join_symfs (char*,size_t,char*) ;
 scalar_t__ access (char*,int ) ;
 int dirname (char*) ;
 char* dso__build_id_filename (struct dso*,int *,int ,int) ;
 scalar_t__ dso__is_kcore (struct dso*) ;
 int free (char*) ;
 scalar_t__ readlink (char*,char*,int) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ strstr (char*,int ) ;

__attribute__((used)) static int dso__disassemble_filename(struct dso *dso, char *filename, size_t filename_size)
{
 char linkname[PATH_MAX];
 char *build_id_filename;
 char *build_id_path = ((void*)0);
 char *pos;

 if (dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS &&
     !dso__is_kcore(dso))
  return SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX;

 build_id_filename = dso__build_id_filename(dso, ((void*)0), 0, 0);
 if (build_id_filename) {
  __symbol__join_symfs(filename, filename_size, build_id_filename);
  free(build_id_filename);
 } else {
  if (dso->has_build_id)
   return ENOMEM;
  goto fallback;
 }

 build_id_path = strdup(filename);
 if (!build_id_path)
  return ENOMEM;






 pos = strrchr(build_id_path, '/');
 if (pos && strlen(pos) < SBUILD_ID_SIZE - 2)
  dirname(build_id_path);

 if (dso__is_kcore(dso) ||
     readlink(build_id_path, linkname, sizeof(linkname)) < 0 ||
     strstr(linkname, DSO__NAME_KALLSYMS) ||
     access(filename, R_OK)) {
fallback:





  __symbol__join_symfs(filename, filename_size, dso->long_name);
 }

 free(build_id_path);
 return 0;
}
