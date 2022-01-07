
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct load_info {TYPE_1__* sechdrs; } ;
struct TYPE_2__ {size_t sh_size; scalar_t__ sh_addr; } ;


 unsigned int find_sec (struct load_info const*,char const*) ;

__attribute__((used)) static void *section_objs(const struct load_info *info,
     const char *name,
     size_t object_size,
     unsigned int *num)
{
 unsigned int sec = find_sec(info, name);


 *num = info->sechdrs[sec].sh_size / object_size;
 return (void *)info->sechdrs[sec].sh_addr;
}
