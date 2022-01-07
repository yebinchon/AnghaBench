
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {int flags; } ;


 int IP_VS_DEST_F_OVERLOAD ;

__attribute__((used)) static inline int is_overloaded(struct ip_vs_dest *dest)
{
 return dest->flags & IP_VS_DEST_F_OVERLOAD;
}
