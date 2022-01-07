
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 int SINGLE_DEPTH_NESTING ;
 int mutex_lock (struct mutex*) ;
 int mutex_lock_nested (struct mutex*,int ) ;
 int swap (struct mutex*,struct mutex*) ;

__attribute__((used)) static void mutex_lock_double(struct mutex *a, struct mutex *b)
{
 if (b < a)
  swap(a, b);

 mutex_lock(a);
 mutex_lock_nested(b, SINGLE_DEPTH_NESTING);
}
