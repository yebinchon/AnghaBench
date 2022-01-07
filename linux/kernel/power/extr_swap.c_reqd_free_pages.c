
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int low_free_pages () ;

__attribute__((used)) static inline unsigned long reqd_free_pages(void)
{
 return low_free_pages() / 2;
}
