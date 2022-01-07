
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dst; } ;


 int dsa2_mutex ;
 int dsa_switch_probe (struct dsa_switch*) ;
 int dsa_tree_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dsa_register_switch(struct dsa_switch *ds)
{
 int err;

 mutex_lock(&dsa2_mutex);
 err = dsa_switch_probe(ds);
 dsa_tree_put(ds->dst);
 mutex_unlock(&dsa2_mutex);

 return err;
}
