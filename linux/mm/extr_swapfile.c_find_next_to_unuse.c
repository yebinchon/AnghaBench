
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {unsigned int max; int * swap_map; } ;


 unsigned int LATENCY_LIMIT ;
 unsigned char READ_ONCE (int ) ;
 scalar_t__ SWAP_MAP_BAD ;
 int cond_resched () ;
 scalar_t__ frontswap_test (struct swap_info_struct*,unsigned int) ;
 scalar_t__ swap_count (unsigned char) ;

__attribute__((used)) static unsigned int find_next_to_unuse(struct swap_info_struct *si,
     unsigned int prev, bool frontswap)
{
 unsigned int i;
 unsigned char count;







 for (i = prev + 1; i < si->max; i++) {
  count = READ_ONCE(si->swap_map[i]);
  if (count && swap_count(count) != SWAP_MAP_BAD)
   if (!frontswap || frontswap_test(si, i))
    break;
  if ((i % LATENCY_LIMIT) == 0)
   cond_resched();
 }

 if (i == si->max)
  i = 0;

 return i;
}
