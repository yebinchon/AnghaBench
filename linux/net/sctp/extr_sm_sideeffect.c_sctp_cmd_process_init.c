
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_init_chunk {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int sctp_process_init (struct sctp_association*,struct sctp_chunk*,int ,struct sctp_init_chunk*,int ) ;
 int sctp_source (struct sctp_chunk*) ;

__attribute__((used)) static int sctp_cmd_process_init(struct sctp_cmd_seq *commands,
     struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     struct sctp_init_chunk *peer_init,
     gfp_t gfp)
{
 int error;






 if (!sctp_process_init(asoc, chunk, sctp_source(chunk), peer_init, gfp))
  error = -ENOMEM;
 else
  error = 0;

 return error;
}
