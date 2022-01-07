
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {int dummy; } ;


 int nf_conntrack_helper_register (struct nf_conntrack_helper*) ;
 int nf_conntrack_helpers_unregister (struct nf_conntrack_helper*,unsigned int) ;

int nf_conntrack_helpers_register(struct nf_conntrack_helper *helper,
      unsigned int n)
{
 unsigned int i;
 int err = 0;

 for (i = 0; i < n; i++) {
  err = nf_conntrack_helper_register(&helper[i]);
  if (err < 0)
   goto err;
 }

 return err;
err:
 if (i > 0)
  nf_conntrack_helpers_unregister(helper, i);
 return err;
}
