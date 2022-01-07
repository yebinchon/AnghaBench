
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int lp_mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static inline void ubifs_get_lprops(struct ubifs_info *c)
{
 mutex_lock(&c->lp_mutex);
}
