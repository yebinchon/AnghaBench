
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int * bat_counters; } ;


 int this_cpu_add (int ,size_t) ;

__attribute__((used)) static inline void batadv_add_counter(struct batadv_priv *bat_priv, size_t idx,
          size_t count)
{
 this_cpu_add(bat_priv->bat_counters[idx], count);
}
