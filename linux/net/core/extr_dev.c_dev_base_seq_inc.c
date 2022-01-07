
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {scalar_t__ dev_base_seq; } ;



__attribute__((used)) static inline void dev_base_seq_inc(struct net *net)
{
 while (++net->dev_base_seq == 0)
  ;
}
