
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_ematch {int dummy; } ;
struct TYPE_2__ {scalar_t__ config; } ;


 TYPE_1__* EM_TEXT_PRIV (struct tcf_ematch*) ;
 int textsearch_destroy (scalar_t__) ;

__attribute__((used)) static void em_text_destroy(struct tcf_ematch *m)
{
 if (EM_TEXT_PRIV(m) && EM_TEXT_PRIV(m)->config)
  textsearch_destroy(EM_TEXT_PRIV(m)->config);
}
