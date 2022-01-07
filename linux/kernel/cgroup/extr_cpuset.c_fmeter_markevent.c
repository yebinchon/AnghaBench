
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmeter {int lock; scalar_t__ cnt; } ;


 int FM_MAXCNT ;
 scalar_t__ FM_SCALE ;
 int fmeter_update (struct fmeter*) ;
 scalar_t__ min (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fmeter_markevent(struct fmeter *fmp)
{
 spin_lock(&fmp->lock);
 fmeter_update(fmp);
 fmp->cnt = min(FM_MAXCNT, fmp->cnt + FM_SCALE);
 spin_unlock(&fmp->lock);
}
