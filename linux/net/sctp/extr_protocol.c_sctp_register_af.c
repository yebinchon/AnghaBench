
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_af {int sa_family; int list; } ;




 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int sctp_address_families ;
 struct sctp_af* sctp_af_v4_specific ;
 struct sctp_af* sctp_af_v6_specific ;

int sctp_register_af(struct sctp_af *af)
{
 switch (af->sa_family) {
 case 129:
  if (sctp_af_v4_specific)
   return 0;
  sctp_af_v4_specific = af;
  break;
 case 128:
  if (sctp_af_v6_specific)
   return 0;
  sctp_af_v6_specific = af;
  break;
 default:
  return 0;
 }

 INIT_LIST_HEAD(&af->list);
 list_add_tail(&af->list, &sctp_address_families);
 return 1;
}
