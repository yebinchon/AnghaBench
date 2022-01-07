
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rhlist; } ;
struct rhltable {TYPE_1__ ht; } ;
struct rhashtable_params {int dummy; } ;


 int rhashtable_init (TYPE_1__*,struct rhashtable_params const*) ;

int rhltable_init(struct rhltable *hlt, const struct rhashtable_params *params)
{
 int err;

 err = rhashtable_init(&hlt->ht, params);
 hlt->ht.rhlist = 1;
 return err;
}
