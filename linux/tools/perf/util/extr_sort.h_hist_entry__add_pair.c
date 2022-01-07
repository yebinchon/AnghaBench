
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int node; } ;
struct hist_entry {TYPE_1__ pairs; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void hist_entry__add_pair(struct hist_entry *pair,
     struct hist_entry *he)
{
 list_add_tail(&pair->pairs.node, &he->pairs.head);
}
