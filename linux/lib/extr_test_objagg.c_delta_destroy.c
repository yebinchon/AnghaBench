
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {int delta_count; } ;
struct delta {int dummy; } ;


 int kfree (struct delta*) ;

__attribute__((used)) static void delta_destroy(void *priv, void *delta_priv)
{
 struct delta *delta = delta_priv;
 struct world *world = priv;

 world->delta_count--;
 kfree(delta);
}
