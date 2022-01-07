
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {int flags; int weight; } ;


 int IP_VS_DEST_F_OVERLOAD ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool is_unavailable(struct ip_vs_dest *dest)
{
 return atomic_read(&dest->weight) <= 0 ||
        dest->flags & IP_VS_DEST_F_OVERLOAD;
}
