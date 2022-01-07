
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_frag_packet {int dummy; } ;


 int BATADV_FRAG_MAX_FRAGMENTS ;
 int BATADV_FRAG_MAX_FRAG_SIZE ;

__attribute__((used)) static int batadv_frag_size_limit(void)
{
 int limit = BATADV_FRAG_MAX_FRAG_SIZE;

 limit -= sizeof(struct batadv_frag_packet);
 limit *= BATADV_FRAG_MAX_FRAGMENTS;

 return limit;
}
