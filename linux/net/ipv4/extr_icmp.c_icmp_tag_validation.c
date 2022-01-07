
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int icmp_strict_tag_validation; } ;


 int * inet_protos ;
 TYPE_1__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool icmp_tag_validation(int proto)
{
 bool ok;

 rcu_read_lock();
 ok = rcu_dereference(inet_protos[proto])->icmp_strict_tag_validation;
 rcu_read_unlock();
 return ok;
}
