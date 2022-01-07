
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_socket_client {int dummy; } ;
struct batadv_icmp_header {size_t uid; } ;


 int batadv_socket_add_packet (struct batadv_socket_client*,struct batadv_icmp_header*,size_t) ;
 struct batadv_socket_client** batadv_socket_client_hash ;

void batadv_socket_receive_packet(struct batadv_icmp_header *icmph,
      size_t icmp_len)
{
 struct batadv_socket_client *hash;

 hash = batadv_socket_client_hash[icmph->uid];
 if (hash)
  batadv_socket_add_packet(hash, icmph, icmp_len);
}
