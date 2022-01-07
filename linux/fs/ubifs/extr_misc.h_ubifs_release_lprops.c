
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ empty_lebs; } ;
struct ubifs_info {scalar_t__ main_lebs; int lp_mutex; TYPE_1__ lst; } ;


 int mutex_is_locked (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static inline void ubifs_release_lprops(struct ubifs_info *c)
{
 ubifs_assert(c, mutex_is_locked(&c->lp_mutex));
 ubifs_assert(c, c->lst.empty_lebs >= 0 &&
       c->lst.empty_lebs <= c->main_lebs);
 mutex_unlock(&c->lp_mutex);
}
