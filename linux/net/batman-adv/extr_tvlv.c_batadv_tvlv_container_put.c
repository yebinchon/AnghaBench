
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tvlv_container {int refcount; } ;


 int batadv_tvlv_container_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void batadv_tvlv_container_put(struct batadv_tvlv_container *tvlv)
{
 kref_put(&tvlv->refcount, batadv_tvlv_container_release);
}
