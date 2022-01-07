
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 int SINGLE_DEPTH_NESTING ;
 scalar_t__ likely (int) ;
 int mutex_lock_killable (struct mutex*) ;
 int mutex_lock_killable_nested (struct mutex*,int ) ;
 int mutex_unlock (struct mutex*) ;
 int swap (struct mutex*,struct mutex*) ;

__attribute__((used)) static int kcmp_lock(struct mutex *m1, struct mutex *m2)
{
 int err;

 if (m2 > m1)
  swap(m1, m2);

 err = mutex_lock_killable(m1);
 if (!err && likely(m1 != m2)) {
  err = mutex_lock_killable_nested(m2, SINGLE_DEPTH_NESTING);
  if (err)
   mutex_unlock(m1);
 }

 return err;
}
