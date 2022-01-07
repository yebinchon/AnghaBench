
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_bind_addr {int dummy; } ;


 int sctp_bind_addr_clean (struct sctp_bind_addr*) ;

void sctp_bind_addr_free(struct sctp_bind_addr *bp)
{

 sctp_bind_addr_clean(bp);
}
