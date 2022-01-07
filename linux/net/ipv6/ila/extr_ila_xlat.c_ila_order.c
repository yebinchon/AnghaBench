
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ifindex; } ;
struct ila_map {TYPE_1__ xp; } ;



__attribute__((used)) static inline int ila_order(struct ila_map *ila)
{
 int score = 0;

 if (ila->xp.ifindex)
  score += 1 << 1;

 return score;
}
