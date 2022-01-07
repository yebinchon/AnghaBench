
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_pf {int dummy; } ;
typedef int sa_family_t ;




 struct sctp_pf* sctp_pf_inet6_specific ;
 struct sctp_pf* sctp_pf_inet_specific ;

struct sctp_pf *sctp_get_pf_specific(sa_family_t family)
{
 switch (family) {
 case 129:
  return sctp_pf_inet_specific;
 case 128:
  return sctp_pf_inet6_specific;
 default:
  return ((void*)0);
 }
}
