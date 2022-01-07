
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u8 ;


 int SCTP_CID_DATA ;
 struct sctp_chunk* _sctp_make_chunk (struct sctp_association const*,int ,int ,int,int ) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_data(const struct sctp_association *asoc,
      __u8 flags, int paylen, gfp_t gfp)
{
 return _sctp_make_chunk(asoc, SCTP_CID_DATA, flags, paylen, gfp);
}
