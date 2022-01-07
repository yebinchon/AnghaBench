
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 scalar_t__ likely (int) ;
 int mutex_unlock (struct mutex*) ;

__attribute__((used)) static void kcmp_unlock(struct mutex *m1, struct mutex *m2)
{
 if (likely(m2 != m1))
  mutex_unlock(m2);
 mutex_unlock(m1);
}
