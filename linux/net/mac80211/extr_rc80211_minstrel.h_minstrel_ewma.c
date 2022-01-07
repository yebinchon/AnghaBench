
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EWMA_DIV ;

__attribute__((used)) static inline int
minstrel_ewma(int old, int new, int weight)
{
 int diff, incr;

 diff = new - old;
 incr = (EWMA_DIV - weight) * diff / EWMA_DIV;

 return old + incr;
}
