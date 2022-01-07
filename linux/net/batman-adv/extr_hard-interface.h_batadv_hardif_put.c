
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hard_iface {int refcount; } ;


 int batadv_hardif_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void batadv_hardif_put(struct batadv_hard_iface *hard_iface)
{
 kref_put(&hard_iface->refcount, batadv_hardif_release);
}
