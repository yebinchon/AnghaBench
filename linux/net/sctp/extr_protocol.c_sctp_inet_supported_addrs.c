
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sock {int dummy; } ;
typedef int __be16 ;


 int SCTP_PARAM_IPV4_ADDRESS ;

__attribute__((used)) static int sctp_inet_supported_addrs(const struct sctp_sock *opt,
         __be16 *types)
{
 types[0] = SCTP_PARAM_IPV4_ADDRESS;
 return 1;
}
