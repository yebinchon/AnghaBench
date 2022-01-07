
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;


 int mnt_get_count (struct mount*) ;

__attribute__((used)) static inline int do_refcount_check(struct mount *mnt, int count)
{
 return mnt_get_count(mnt) > count;
}
