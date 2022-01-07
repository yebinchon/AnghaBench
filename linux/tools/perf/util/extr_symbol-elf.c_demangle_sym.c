
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {scalar_t__ kernel; } ;


 int DMGL_ANSI ;
 int DMGL_NO_OPTS ;
 int DMGL_PARAMS ;
 int JAVA_DEMANGLE_NORET ;
 char* bfd_demangle (int *,char const*,int) ;
 char* java_demangle_sym (char const*,int ) ;
 int rust_demangle_sym (char*) ;
 scalar_t__ rust_is_mangled (char*) ;
 scalar_t__ verbose ;
 int want_demangle (int) ;

__attribute__((used)) static char *demangle_sym(struct dso *dso, int kmodule, const char *elf_name)
{
 int demangle_flags = verbose > 0 ? (DMGL_PARAMS | DMGL_ANSI) : DMGL_NO_OPTS;
 char *demangled = ((void*)0);






 if (!want_demangle(dso->kernel || kmodule))
     return demangled;

 demangled = bfd_demangle(((void*)0), elf_name, demangle_flags);
 if (demangled == ((void*)0))
  demangled = java_demangle_sym(elf_name, JAVA_DEMANGLE_NORET);
 else if (rust_is_mangled(demangled))




  rust_demangle_sym(demangled);

 return demangled;
}
