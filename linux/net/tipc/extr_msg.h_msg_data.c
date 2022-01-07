
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unchar ;
struct tipc_msg {int dummy; } ;


 int msg_hdr_sz (struct tipc_msg*) ;

__attribute__((used)) static inline unchar *msg_data(struct tipc_msg *m)
{
 return ((unchar *)m) + msg_hdr_sz(m);
}
