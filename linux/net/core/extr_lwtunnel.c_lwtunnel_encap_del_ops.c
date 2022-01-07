
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_encap_ops {int dummy; } ;


 int ERANGE ;
 unsigned int LWTUNNEL_ENCAP_MAX ;
 unsigned int LWTUNNEL_ENCAP_NONE ;
 struct lwtunnel_encap_ops const* cmpxchg (struct lwtunnel_encap_ops const**,struct lwtunnel_encap_ops const*,int *) ;
 int * lwtun_encaps ;
 int synchronize_net () ;

int lwtunnel_encap_del_ops(const struct lwtunnel_encap_ops *ops,
      unsigned int encap_type)
{
 int ret;

 if (encap_type == LWTUNNEL_ENCAP_NONE ||
     encap_type > LWTUNNEL_ENCAP_MAX)
  return -ERANGE;

 ret = (cmpxchg((const struct lwtunnel_encap_ops **)
         &lwtun_encaps[encap_type],
         ops, ((void*)0)) == ops) ? 0 : -1;

 synchronize_net();

 return ret;
}
