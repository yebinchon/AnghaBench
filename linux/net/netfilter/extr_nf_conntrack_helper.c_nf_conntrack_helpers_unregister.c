
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {int dummy; } ;


 int nf_conntrack_helper_unregister (struct nf_conntrack_helper*) ;

void nf_conntrack_helpers_unregister(struct nf_conntrack_helper *helper,
    unsigned int n)
{
 while (n-- > 0)
  nf_conntrack_helper_unregister(&helper[n]);
}
