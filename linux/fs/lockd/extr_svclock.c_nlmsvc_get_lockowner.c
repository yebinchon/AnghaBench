
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_lockowner {int count; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static struct nlm_lockowner *
nlmsvc_get_lockowner(struct nlm_lockowner *lockowner)
{
 refcount_inc(&lockowner->count);
 return lockowner;
}
