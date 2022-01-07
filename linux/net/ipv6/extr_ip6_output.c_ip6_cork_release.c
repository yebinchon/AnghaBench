
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int * dst; } ;
struct inet_cork_full {int fl; TYPE_1__ base; } ;
struct inet6_cork {TYPE_2__* opt; } ;
struct TYPE_4__ {struct TYPE_4__* srcrt; struct TYPE_4__* hopopt; struct TYPE_4__* dst1opt; struct TYPE_4__* dst0opt; } ;


 int IPCORK_ALLFRAG ;
 int dst_release (int *) ;
 int kfree (TYPE_2__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ip6_cork_release(struct inet_cork_full *cork,
        struct inet6_cork *v6_cork)
{
 if (v6_cork->opt) {
  kfree(v6_cork->opt->dst0opt);
  kfree(v6_cork->opt->dst1opt);
  kfree(v6_cork->opt->hopopt);
  kfree(v6_cork->opt->srcrt);
  kfree(v6_cork->opt);
  v6_cork->opt = ((void*)0);
 }

 if (cork->base.dst) {
  dst_release(cork->base.dst);
  cork->base.dst = ((void*)0);
  cork->base.flags &= ~IPCORK_ALLFRAG;
 }
 memset(&cork->fl, 0, sizeof(cork->fl));
}
