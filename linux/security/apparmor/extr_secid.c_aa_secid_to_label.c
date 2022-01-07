
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_label {int dummy; } ;


 int aa_secids ;
 struct aa_label* idr_find (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct aa_label *aa_secid_to_label(u32 secid)
{
 struct aa_label *label;

 rcu_read_lock();
 label = idr_find(&aa_secids, secid);
 rcu_read_unlock();

 return label;
}
