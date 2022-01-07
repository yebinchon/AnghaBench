
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct load_info {int dummy; } ;



__attribute__((used)) static inline int check_modstruct_version(const struct load_info *info,
       struct module *mod)
{
 return 1;
}
