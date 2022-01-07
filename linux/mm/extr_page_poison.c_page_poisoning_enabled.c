
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC ;
 int IS_ENABLED (int ) ;
 scalar_t__ debug_pagealloc_enabled () ;
 scalar_t__ want_page_poisoning ;

bool page_poisoning_enabled(void)
{






 return (want_page_poisoning ||
  (!IS_ENABLED(CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC) &&
  debug_pagealloc_enabled()));
}
