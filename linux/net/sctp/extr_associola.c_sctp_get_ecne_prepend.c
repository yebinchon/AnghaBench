
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int last_ecne_tsn; int need_ecne; } ;


 struct sctp_chunk* sctp_make_ecne (struct sctp_association*,int ) ;

struct sctp_chunk *sctp_get_ecne_prepend(struct sctp_association *asoc)
{
 if (!asoc->need_ecne)
  return ((void*)0);




 return sctp_make_ecne(asoc, asoc->last_ecne_tsn);
}
