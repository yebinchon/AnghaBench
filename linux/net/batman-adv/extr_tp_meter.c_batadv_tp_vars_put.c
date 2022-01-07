
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tp_vars {int refcount; } ;


 int batadv_tp_vars_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void batadv_tp_vars_put(struct batadv_tp_vars *tp_vars)
{
 kref_put(&tp_vars->refcount, batadv_tp_vars_release);
}
