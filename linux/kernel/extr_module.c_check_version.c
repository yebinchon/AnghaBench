
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct load_info {int dummy; } ;
typedef int s32 ;



__attribute__((used)) static inline int check_version(const struct load_info *info,
    const char *symname,
    struct module *mod,
    const s32 *crc)
{
 return 1;
}
