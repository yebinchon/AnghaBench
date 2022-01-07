
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_encap_ops {int dummy; } ;


 int ERANGE ;
 unsigned int LWTUNNEL_ENCAP_MAX ;
 int cmpxchg (struct lwtunnel_encap_ops const**,int *,struct lwtunnel_encap_ops const*) ;
 int * lwtun_encaps ;

int lwtunnel_encap_add_ops(const struct lwtunnel_encap_ops *ops,
      unsigned int num)
{
 if (num > LWTUNNEL_ENCAP_MAX)
  return -ERANGE;

 return !cmpxchg((const struct lwtunnel_encap_ops **)
   &lwtun_encaps[num],
   ((void*)0), ops) ? 0 : -1;
}
