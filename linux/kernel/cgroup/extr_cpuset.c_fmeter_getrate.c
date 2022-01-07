
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmeter {int val; int lock; } ;


 int fmeter_update (struct fmeter*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fmeter_getrate(struct fmeter *fmp)
{
 int val;

 spin_lock(&fmp->lock);
 fmeter_update(fmp);
 val = fmp->val;
 spin_unlock(&fmp->lock);
 return val;
}
