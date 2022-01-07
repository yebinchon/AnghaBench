
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_forw_packet {int cleanup_list; } ;


 int hlist_unhashed (int *) ;

__attribute__((used)) static bool
batadv_forw_packet_was_stolen(struct batadv_forw_packet *forw_packet)
{
 return !hlist_unhashed(&forw_packet->cleanup_list);
}
