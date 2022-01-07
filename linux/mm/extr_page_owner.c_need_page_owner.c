
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int page_owner_enabled ;

__attribute__((used)) static bool need_page_owner(void)
{
 return page_owner_enabled;
}
