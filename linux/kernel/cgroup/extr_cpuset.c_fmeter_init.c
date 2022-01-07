
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmeter {int lock; scalar_t__ time; scalar_t__ val; scalar_t__ cnt; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void fmeter_init(struct fmeter *fmp)
{
 fmp->cnt = 0;
 fmp->val = 0;
 fmp->time = 0;
 spin_lock_init(&fmp->lock);
}
