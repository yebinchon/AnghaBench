
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int imported_namespaces; } ;


 int contains_namespace (int ,char const*) ;

__attribute__((used)) static bool module_imports_namespace(struct module *module,
         const char *namespace)
{
 return contains_namespace(module->imported_namespaces, namespace);
}
