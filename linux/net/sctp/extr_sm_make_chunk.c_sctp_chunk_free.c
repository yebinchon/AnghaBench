
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {scalar_t__ msg; } ;


 int sctp_chunk_put (struct sctp_chunk*) ;
 int sctp_datamsg_put (scalar_t__) ;

void sctp_chunk_free(struct sctp_chunk *chunk)
{

 if (chunk->msg)
  sctp_datamsg_put(chunk->msg);

 sctp_chunk_put(chunk);
}
