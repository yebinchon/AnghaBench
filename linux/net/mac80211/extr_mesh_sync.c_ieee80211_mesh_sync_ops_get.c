
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee80211_mesh_sync_ops {int dummy; } ;
struct TYPE_3__ {scalar_t__ method; struct ieee80211_mesh_sync_ops const ops; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* sync_methods ;

const struct ieee80211_mesh_sync_ops *ieee80211_mesh_sync_ops_get(u8 method)
{
 int i;

 for (i = 0 ; i < ARRAY_SIZE(sync_methods); ++i) {
  if (sync_methods[i].method == method)
   return &sync_methods[i].ops;
 }
 return ((void*)0);
}
