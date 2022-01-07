
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_access_info {int access_addr; } ;


 scalar_t__ addr_has_shadow (int ) ;
 char const* get_shadow_bug_type (struct kasan_access_info*) ;
 char const* get_wild_bug_type (struct kasan_access_info*) ;

const char *get_bug_type(struct kasan_access_info *info)
{
 if (addr_has_shadow(info->access_addr))
  return get_shadow_bug_type(info);
 return get_wild_bug_type(info);
}
