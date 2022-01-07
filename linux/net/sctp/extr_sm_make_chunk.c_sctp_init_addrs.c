
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_chunk {int dest; int source; } ;


 int memcpy (int *,union sctp_addr*,int) ;

void sctp_init_addrs(struct sctp_chunk *chunk, union sctp_addr *src,
       union sctp_addr *dest)
{
 memcpy(&chunk->source, src, sizeof(union sctp_addr));
 memcpy(&chunk->dest, dest, sizeof(union sctp_addr));
}
