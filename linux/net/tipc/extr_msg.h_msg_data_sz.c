
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;


 scalar_t__ msg_hdr_sz (struct tipc_msg*) ;
 scalar_t__ msg_size (struct tipc_msg*) ;

__attribute__((used)) static inline u32 msg_data_sz(struct tipc_msg *m)
{
 return msg_size(m) - msg_hdr_sz(m);
}
