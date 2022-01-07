
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
typedef int gfp_t ;


 int PAD ;
 int PNS_PEP_STATUS_IND ;
 int PN_PEP_TYPE_COMMON ;
 int pep_indicate (struct sock*,int ,int ,int *,int,int ) ;

__attribute__((used)) static int pipe_snd_status(struct sock *sk, u8 type, u8 status, gfp_t priority)
{
 u8 data[4] = { type, PAD, PAD, status };

 return pep_indicate(sk, PNS_PEP_STATUS_IND, PN_PEP_TYPE_COMMON,
    data, 4, priority);
}
