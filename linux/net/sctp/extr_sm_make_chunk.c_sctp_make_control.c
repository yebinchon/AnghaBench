
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u8 ;


 struct sctp_chunk* _sctp_make_chunk (struct sctp_association const*,int ,int ,int,int ) ;
 int sctp_control_set_owner_w (struct sctp_chunk*) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_control(const struct sctp_association *asoc,
         __u8 type, __u8 flags, int paylen,
         gfp_t gfp)
{
 struct sctp_chunk *chunk;

 chunk = _sctp_make_chunk(asoc, type, flags, paylen, gfp);
 if (chunk)
  sctp_control_set_owner_w(chunk);

 return chunk;
}
