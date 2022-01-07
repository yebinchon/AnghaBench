
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {int ref; } ;


 int ip_set_ref_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void
__ip_set_get(struct ip_set *set)
{
 write_lock_bh(&ip_set_ref_lock);
 set->ref++;
 write_unlock_bh(&ip_set_ref_lock);
}
