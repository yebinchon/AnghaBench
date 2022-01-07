
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int wait; int flag; } ;


 int META_locked ;
 int clear_bit_unlock (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void unlock_metapage(struct metapage *mp)
{
 clear_bit_unlock(META_locked, &mp->flag);
 wake_up(&mp->wait);
}
