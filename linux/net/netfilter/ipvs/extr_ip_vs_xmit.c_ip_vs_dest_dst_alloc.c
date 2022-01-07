
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest_dst {int dummy; } ;


 int GFP_ATOMIC ;
 struct ip_vs_dest_dst* kmalloc (int,int ) ;

__attribute__((used)) static inline struct ip_vs_dest_dst *ip_vs_dest_dst_alloc(void)
{
 return kmalloc(sizeof(struct ip_vs_dest_dst), GFP_ATOMIC);
}
