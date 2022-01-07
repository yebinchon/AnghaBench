
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int dccps_pcrlen; int dccps_pcslen; } ;


 int DCCPF_MIN_CSUM_COVER ;
 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int dccp_feat_register_sp (struct sock*,int ,int,int*,int) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;

__attribute__((used)) static int dccp_setsockopt_cscov(struct sock *sk, int cscov, bool rx)
{
 u8 *list, len;
 int i, rc;

 if (cscov < 0 || cscov > 15)
  return -EINVAL;






 if (cscov == 0)
  return 0;
 len = 16 - cscov;

 list = kmalloc(len, GFP_KERNEL);
 if (list == ((void*)0))
  return -ENOBUFS;

 for (i = 0; i < len; i++)
  list[i] = cscov++;

 rc = dccp_feat_register_sp(sk, DCCPF_MIN_CSUM_COVER, rx, list, len);

 if (rc == 0) {
  if (rx)
   dccp_sk(sk)->dccps_pcrlen = cscov;
  else
   dccp_sk(sk)->dccps_pcslen = cscov;
 }
 kfree(list);
 return rc;
}
