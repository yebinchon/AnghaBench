
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_datamsg {int dummy; } ;
struct sctp_chunk {struct sctp_datamsg* msg; } ;


 int sctp_datamsg_hold (struct sctp_datamsg*) ;

__attribute__((used)) static void sctp_datamsg_assign(struct sctp_datamsg *msg, struct sctp_chunk *chunk)
{
 sctp_datamsg_hold(msg);
 chunk->msg = msg;
}
