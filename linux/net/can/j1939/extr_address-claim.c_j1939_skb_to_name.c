
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
typedef int name_t ;
typedef int __le64 ;


 int le64_to_cpup (int *) ;

__attribute__((used)) static inline name_t j1939_skb_to_name(const struct sk_buff *skb)
{
 return le64_to_cpup((__le64 *)skb->data);
}
