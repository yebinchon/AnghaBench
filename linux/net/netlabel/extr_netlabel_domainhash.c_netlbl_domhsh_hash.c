
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;


 int netlbl_domhsh ;
 TYPE_1__* netlbl_domhsh_rcu_deref (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static u32 netlbl_domhsh_hash(const char *key)
{
 u32 iter;
 u32 val;
 u32 len;




 for (iter = 0, val = 0, len = strlen(key); iter < len; iter++)
  val = (val << 4 | (val >> (8 * sizeof(u32) - 4))) ^ key[iter];
 return val & (netlbl_domhsh_rcu_deref(netlbl_domhsh)->size - 1);
}
