
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_reconf_chunk {int params; } ;
struct TYPE_2__ {int v; } ;
struct sctp_chunk {TYPE_1__ param_hdr; scalar_t__ chunk_hdr; } ;
struct sctp_association {int dummy; } ;


 int GFP_ATOMIC ;
 int SCTP_CID_RECONF ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_reconf(const struct sctp_association *asoc,
        int length)
{
 struct sctp_reconf_chunk *reconf;
 struct sctp_chunk *retval;

 retval = sctp_make_control(asoc, SCTP_CID_RECONF, 0, length,
       GFP_ATOMIC);
 if (!retval)
  return ((void*)0);

 reconf = (struct sctp_reconf_chunk *)retval->chunk_hdr;
 retval->param_hdr.v = reconf->params;

 return retval;
}
