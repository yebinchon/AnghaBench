
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest_dst {int dummy; } ;


 int kfree (struct ip_vs_dest_dst*) ;

__attribute__((used)) static inline void ip_vs_dest_dst_free(struct ip_vs_dest_dst *dest_dst)
{
 kfree(dest_dst);
}
