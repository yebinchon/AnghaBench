
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_errhdr {int length; int cause; } ;
struct TYPE_2__ {int err_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; int skb; } ;
typedef int err ;
typedef int __u16 ;
typedef int __be16 ;


 int ENOSPC ;
 int htons (int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_errhdr*) ;
 int skb_tailroom (int ) ;

int sctp_init_cause(struct sctp_chunk *chunk, __be16 cause_code,
      size_t paylen)
{
 struct sctp_errhdr err;
 __u16 len;


 err.cause = cause_code;
 len = sizeof(err) + paylen;
 err.length = htons(len);

 if (skb_tailroom(chunk->skb) < len)
  return -ENOSPC;

 chunk->subh.err_hdr = sctp_addto_chunk(chunk, sizeof(err), &err);

 return 0;
}
