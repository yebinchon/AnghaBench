
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int * hdr; } ;


 size_t TIPC_MEDIA_INFO_OFFSET ;

__attribute__((used)) static inline char *msg_media_addr(struct tipc_msg *m)
{
 return (char *)&m->hdr[TIPC_MEDIA_INFO_OFFSET];
}
