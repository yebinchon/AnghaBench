
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ msg_data (struct tipc_msg*) ;

__attribute__((used)) static inline u8 *msg_node_id(struct tipc_msg *hdr)
{
 return (u8 *)msg_data(hdr);
}
