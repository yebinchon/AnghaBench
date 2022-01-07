
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct load_weight {unsigned long weight; scalar_t__ inv_weight; } ;



__attribute__((used)) static inline void update_load_sub(struct load_weight *lw, unsigned long dec)
{
 lw->weight -= dec;
 lw->inv_weight = 0;
}
