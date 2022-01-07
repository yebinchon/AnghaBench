
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int type; } ;
struct sctp_strreset_resp {void* result; void* response_seq; TYPE_1__ param_hdr; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int resp ;
typedef int __u32 ;
typedef int __u16 ;


 int SCTP_PARAM_RESET_RESPONSE ;
 void* htonl (int ) ;
 int htons (int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_strreset_resp*) ;
 struct sctp_chunk* sctp_make_reconf (struct sctp_association const*,int) ;

struct sctp_chunk *sctp_make_strreset_resp(const struct sctp_association *asoc,
        __u32 result, __u32 sn)
{
 struct sctp_strreset_resp resp;
 __u16 length = sizeof(resp);
 struct sctp_chunk *retval;

 retval = sctp_make_reconf(asoc, length);
 if (!retval)
  return ((void*)0);

 resp.param_hdr.type = SCTP_PARAM_RESET_RESPONSE;
 resp.param_hdr.length = htons(length);
 resp.response_seq = htonl(sn);
 resp.result = htonl(result);

 sctp_addto_chunk(retval, sizeof(resp), &resp);

 return retval;
}
