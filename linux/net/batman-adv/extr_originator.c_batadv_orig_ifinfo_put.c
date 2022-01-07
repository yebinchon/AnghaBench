
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_ifinfo {int refcount; } ;


 int batadv_orig_ifinfo_release ;
 int kref_put (int *,int ) ;

void batadv_orig_ifinfo_put(struct batadv_orig_ifinfo *orig_ifinfo)
{
 kref_put(&orig_ifinfo->refcount, batadv_orig_ifinfo_release);
}
