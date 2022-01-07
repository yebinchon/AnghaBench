
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* put ) (struct tcf_proto*,void*) ;} ;


 int stub1 (struct tcf_proto*,void*) ;

__attribute__((used)) static void tfilter_put(struct tcf_proto *tp, void *fh)
{
 if (tp->ops->put && fh)
  tp->ops->put(tp, fh);
}
