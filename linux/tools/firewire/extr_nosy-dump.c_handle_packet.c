
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct phy_packet {int dummy; } ;
struct TYPE_3__ {size_t tcode; } ;
struct link_packet {TYPE_1__ common; } ;
struct TYPE_4__ {int type; } ;






 int clear_pending_transaction_list () ;
 int handle_request_packet (int *,size_t) ;
 int handle_response_packet (int *,size_t) ;
 TYPE_2__* packet_info ;
 int printf (char*) ;

__attribute__((used)) static int
handle_packet(uint32_t *data, size_t length)
{
 if (length == 0) {
  printf("bus reset\r\n");
  clear_pending_transaction_list();
 } else if (length > sizeof(struct phy_packet)) {
  struct link_packet *p = (struct link_packet *) data;

  switch (packet_info[p->common.tcode].type) {
  case 130:
   return handle_request_packet(data, length);

  case 128:
   return handle_response_packet(data, length);

  case 131:
  case 129:
   return 0;
  }
 }

 return 1;
}
