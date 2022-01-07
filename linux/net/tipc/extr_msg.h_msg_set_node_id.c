
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tipc_msg {int dummy; } ;


 int memcpy (int ,int *,int) ;
 int msg_data (struct tipc_msg*) ;

__attribute__((used)) static inline void msg_set_node_id(struct tipc_msg *hdr, u8 *id)
{
 memcpy(msg_data(hdr), id, 16);
}
