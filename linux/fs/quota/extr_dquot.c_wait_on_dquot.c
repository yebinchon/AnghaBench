
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void wait_on_dquot(struct dquot *dquot)
{
 mutex_lock(&dquot->dq_lock);
 mutex_unlock(&dquot->dq_lock);
}
