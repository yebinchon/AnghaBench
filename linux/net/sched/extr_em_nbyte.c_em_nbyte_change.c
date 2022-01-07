
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch {int datalen; unsigned long data; } ;
struct tcf_em_nbyte {int len; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 scalar_t__ kmemdup (void*,int,int ) ;

__attribute__((used)) static int em_nbyte_change(struct net *net, void *data, int data_len,
      struct tcf_ematch *em)
{
 struct tcf_em_nbyte *nbyte = data;

 if (data_len < sizeof(*nbyte) ||
     data_len < (sizeof(*nbyte) + nbyte->len))
  return -EINVAL;

 em->datalen = sizeof(*nbyte) + nbyte->len;
 em->data = (unsigned long)kmemdup(data, em->datalen, GFP_KERNEL);
 if (em->data == 0UL)
  return -ENOBUFS;

 return 0;
}
