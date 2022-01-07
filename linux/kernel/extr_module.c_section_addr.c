
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct load_info {TYPE_1__* sechdrs; } ;
struct TYPE_2__ {scalar_t__ sh_addr; } ;


 size_t find_sec (struct load_info const*,char const*) ;

__attribute__((used)) static void *section_addr(const struct load_info *info, const char *name)
{

 return (void *)info->sechdrs[find_sec(info, name)].sh_addr;
}
