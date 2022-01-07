
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_af {int dummy; } ;
typedef int sa_family_t ;




 struct sctp_af* sctp_af_v4_specific ;
 struct sctp_af* sctp_af_v6_specific ;

struct sctp_af *sctp_get_af_specific(sa_family_t family)
{
 switch (family) {
 case 129:
  return sctp_af_v4_specific;
 case 128:
  return sctp_af_v6_specific;
 default:
  return ((void*)0);
 }
}
