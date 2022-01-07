
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll {int lock; int users; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void free_pll(struct pll *pll)
{
 mutex_lock(&pll->lock);
 pll->users--;
 mutex_unlock(&pll->lock);
}
