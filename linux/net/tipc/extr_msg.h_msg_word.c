
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_msg {int * hdr; } ;


 size_t ntohl (int ) ;

__attribute__((used)) static inline u32 msg_word(struct tipc_msg *m, u32 pos)
{
 return ntohl(m->hdr[pos]);
}
