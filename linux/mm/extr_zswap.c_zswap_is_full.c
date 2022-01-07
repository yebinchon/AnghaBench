
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int ,int ) ;
 int PAGE_SIZE ;
 int totalram_pages () ;
 int zswap_max_pool_percent ;
 int zswap_pool_total_size ;

__attribute__((used)) static bool zswap_is_full(void)
{
 return totalram_pages() * zswap_max_pool_percent / 100 <
   DIV_ROUND_UP(zswap_pool_total_size, PAGE_SIZE);
}
