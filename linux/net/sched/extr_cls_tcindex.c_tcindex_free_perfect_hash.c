
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcindex_data {int hash; TYPE_1__* perfect; } ;
struct TYPE_2__ {int exts; } ;


 int kfree (TYPE_1__*) ;
 int tcf_exts_destroy (int *) ;

__attribute__((used)) static void tcindex_free_perfect_hash(struct tcindex_data *cp)
{
 int i;

 for (i = 0; i < cp->hash; i++)
  tcf_exts_destroy(&cp->perfect[i].exts);
 kfree(cp->perfect);
}
