
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warning (char*,char const*,char const*) ;

__attribute__((used)) static void unsupported_man_viewer(const char *name, const char *var)
{
 pr_warning("'%s': path for unsupported man viewer.\n"
     "Please consider using 'man.<tool>.%s' instead.", name, var);
}
