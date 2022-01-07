
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_query_join_packet {int dummy; } ;
union dlm_query_join_response {int intval; struct dlm_query_join_packet packet; } ;
typedef int u32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static void dlm_query_join_packet_to_wire(struct dlm_query_join_packet *packet,
       u32 *wire)
{
 union dlm_query_join_response response;

 response.packet = *packet;
 *wire = be32_to_cpu(response.intval);
}
