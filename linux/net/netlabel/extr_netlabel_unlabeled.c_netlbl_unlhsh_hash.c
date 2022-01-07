
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;


 int netlbl_unlhsh ;
 TYPE_1__* netlbl_unlhsh_rcu_deref (int ) ;

__attribute__((used)) static u32 netlbl_unlhsh_hash(int ifindex)
{
 return ifindex & (netlbl_unlhsh_rcu_deref(netlbl_unlhsh)->size - 1);
}
