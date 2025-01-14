
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace_list {int namespace; struct namespace_list* next; } ;
struct module {char* name; struct namespace_list* required_namespaces; scalar_t__ skip; struct module* next; } ;
struct buffer {scalar_t__ pos; } ;


 int PATH_MAX ;
 int buf_printf (struct buffer*,char*,int ) ;
 struct module* modules ;
 int sprintf (char*,char*,char*) ;
 int write_if_changed (struct buffer*,char*) ;

__attribute__((used)) static void write_namespace_deps_files(void)
{
 struct module *mod;
 struct namespace_list *ns;
 struct buffer ns_deps_buf = {};

 for (mod = modules; mod; mod = mod->next) {
  char fname[PATH_MAX];

  if (mod->skip)
   continue;

  ns_deps_buf.pos = 0;

  for (ns = mod->required_namespaces; ns; ns = ns->next)
   buf_printf(&ns_deps_buf, "%s\n", ns->namespace);

  if (ns_deps_buf.pos == 0)
   continue;

  sprintf(fname, "%s.ns_deps", mod->name);
  write_if_changed(&ns_deps_buf, fname);
 }
}
