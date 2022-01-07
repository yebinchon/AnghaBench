
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LWTUNNEL_ENCAP_ILA ;
 int ila_encap_ops ;
 int lwtunnel_encap_del_ops (int *,int ) ;

void ila_lwt_fini(void)
{
 lwtunnel_encap_del_ops(&ila_encap_ops, LWTUNNEL_ENCAP_ILA);
}
