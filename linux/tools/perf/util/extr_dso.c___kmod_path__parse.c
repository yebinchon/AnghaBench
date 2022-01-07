
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_path {int kmod; int name; int comp; } ;


 int COMP_ID__NONE ;
 int ENOMEM ;
 int asprintf (int *,char*,...) ;
 int is_supported_compression (char const*) ;
 int memset (struct kmod_path*,int,int) ;
 int strdup (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;
 int strreplace (int ,char,char) ;

int __kmod_path__parse(struct kmod_path *m, const char *path,
         bool alloc_name)
{
 const char *name = strrchr(path, '/');
 const char *ext = strrchr(path, '.');
 bool is_simple_name = 0;

 memset(m, 0x0, sizeof(*m));
 name = name ? name + 1 : path;
 if (name[0] == '[') {
  is_simple_name = 1;
  if ((strncmp(name, "[kernel.kallsyms]", 17) == 0) ||
      (strncmp(name, "[guest.kernel.kallsyms", 22) == 0) ||
      (strncmp(name, "[vdso]", 6) == 0) ||
      (strncmp(name, "[vdso32]", 8) == 0) ||
      (strncmp(name, "[vdsox32]", 9) == 0) ||
      (strncmp(name, "[vsyscall]", 10) == 0)) {
   m->kmod = 0;

  } else
   m->kmod = 1;
 }


 if ((ext == ((void*)0)) || is_simple_name) {
  if (alloc_name) {
   m->name = strdup(name);
   return m->name ? 0 : -ENOMEM;
  }
  return 0;
 }

 m->comp = is_supported_compression(ext + 1);
 if (m->comp > COMP_ID__NONE)
  ext -= 3;


 if (ext > name)
  m->kmod = !strncmp(ext, ".ko", 3);

 if (alloc_name) {
  if (m->kmod) {
   if (asprintf(&m->name, "[%.*s]", (int) (ext - name), name) == -1)
    return -ENOMEM;
  } else {
   if (asprintf(&m->name, "%s", name) == -1)
    return -ENOMEM;
  }

  strreplace(m->name, '-', '_');
 }

 return 0;
}
