
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll {int id; int lock; } ;


 int mutex_init (int *) ;

__attribute__((used)) static inline void pll_init(struct pll *pll, int id)
{
 pll->id = id;
 mutex_init(&pll->lock);
}
