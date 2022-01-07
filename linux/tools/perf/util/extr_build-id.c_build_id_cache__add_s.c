
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {scalar_t__ need_setns; } ;


 scalar_t__ EEXIST ;
 int F_OK ;
 size_t PATH_MAX ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ asprintf (char**,char*,char*,int ) ;
 scalar_t__ build_id_cache__add_sdt_cache (char const*,char*,struct nsinfo*) ;
 int build_id_cache__basename (int,int,int) ;
 char* build_id_cache__cachedir (char const*,char const*,struct nsinfo*,int,int) ;
 char* build_id_cache__find_debug (char const*,struct nsinfo*) ;
 int build_id_cache__linkname (char const*,char*,size_t const) ;
 char const* buildid_dir ;
 scalar_t__ copyfile (char const*,char*) ;
 scalar_t__ copyfile_ns (char const*,char*,struct nsinfo*) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ is_regular_file (char*) ;
 scalar_t__ link (char*,char*) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ mkdir_p (char*,int) ;
 char* nsinfo__realpath (char const*,struct nsinfo*) ;
 int pr_debug4 (char*,char*) ;
 char* realpath (char const*,int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 scalar_t__ symlink (char*,char*) ;
 scalar_t__ unlink (char*) ;
 char* zalloc (size_t const) ;
 int zfree (char**) ;

int build_id_cache__add_s(const char *sbuild_id, const char *name,
     struct nsinfo *nsi, bool is_kallsyms, bool is_vdso)
{
 const size_t size = PATH_MAX;
 char *realname = ((void*)0), *filename = ((void*)0), *dir_name = ((void*)0),
      *linkname = zalloc(size), *tmp;
 char *debugfile = ((void*)0);
 int err = -1;

 if (!is_kallsyms) {
  if (!is_vdso)
   realname = nsinfo__realpath(name, nsi);
  else
   realname = realpath(name, ((void*)0));
  if (!realname)
   goto out_free;
 }

 dir_name = build_id_cache__cachedir(sbuild_id, name, nsi, is_kallsyms,
         is_vdso);
 if (!dir_name)
  goto out_free;


 if (is_regular_file(dir_name))
  if (unlink(dir_name))
   goto out_free;

 if (mkdir_p(dir_name, 0755))
  goto out_free;


 if (asprintf(&filename, "%s/%s", dir_name,
       build_id_cache__basename(is_kallsyms, is_vdso,
       0)) < 0) {
  filename = ((void*)0);
  goto out_free;
 }

 if (access(filename, F_OK)) {
  if (is_kallsyms) {
   if (copyfile("/proc/kallsyms", filename))
    goto out_free;
  } else if (nsi && nsi->need_setns) {
   if (copyfile_ns(name, filename, nsi))
    goto out_free;
  } else if (link(realname, filename) && errno != EEXIST &&
    copyfile(name, filename))
   goto out_free;
 }






 if (!is_kallsyms && !is_vdso &&
     strncmp(".ko", name + strlen(name) - 3, 3)) {
  debugfile = build_id_cache__find_debug(sbuild_id, nsi);
  if (debugfile) {
   zfree(&filename);
   if (asprintf(&filename, "%s/%s", dir_name,
       build_id_cache__basename(0, 0, 1)) < 0) {
    filename = ((void*)0);
    goto out_free;
   }
   if (access(filename, F_OK)) {
    if (nsi && nsi->need_setns) {
     if (copyfile_ns(debugfile, filename,
       nsi))
      goto out_free;
    } else if (link(debugfile, filename) &&
      errno != EEXIST &&
      copyfile(debugfile, filename))
     goto out_free;
   }
  }
 }

 if (!build_id_cache__linkname(sbuild_id, linkname, size))
  goto out_free;
 tmp = strrchr(linkname, '/');
 *tmp = '\0';

 if (access(linkname, X_OK) && mkdir_p(linkname, 0755))
  goto out_free;

 *tmp = '/';
 tmp = dir_name + strlen(buildid_dir) - 5;
 memcpy(tmp, "../..", 5);

 if (symlink(tmp, linkname) == 0)
  err = 0;


 if (realname &&
     build_id_cache__add_sdt_cache(sbuild_id, realname, nsi) < 0)
  pr_debug4("Failed to update/scan SDT cache for %s\n", realname);

out_free:
 if (!is_kallsyms)
  free(realname);
 free(filename);
 free(debugfile);
 free(dir_name);
 free(linkname);
 return err;
}
