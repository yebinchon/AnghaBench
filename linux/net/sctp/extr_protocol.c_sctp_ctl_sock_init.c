
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctl_sock; } ;
struct net {TYPE_1__ sctp; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET ;
 int IPPROTO_SCTP ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int SOCK_SEQPACKET ;
 int inet_ctl_sock_create (int *,scalar_t__,int ,int ,struct net*) ;
 int pr_err (char*) ;
 scalar_t__ sctp_get_pf_specific (scalar_t__) ;

__attribute__((used)) static int sctp_ctl_sock_init(struct net *net)
{
 int err;
 sa_family_t family = PF_INET;

 if (sctp_get_pf_specific(PF_INET6))
  family = PF_INET6;

 err = inet_ctl_sock_create(&net->sctp.ctl_sock, family,
       SOCK_SEQPACKET, IPPROTO_SCTP, net);


 if (err < 0 && family == PF_INET6)
  err = inet_ctl_sock_create(&net->sctp.ctl_sock, AF_INET,
        SOCK_SEQPACKET, IPPROTO_SCTP,
        net);

 if (err < 0) {
  pr_err("Failed to create the SCTP control socket\n");
  return err;
 }
 return 0;
}
