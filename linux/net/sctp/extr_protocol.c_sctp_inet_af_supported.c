
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sock {int dummy; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET ;

__attribute__((used)) static int sctp_inet_af_supported(sa_family_t family, struct sctp_sock *sp)
{

 return AF_INET == family;
}
