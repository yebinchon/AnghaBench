
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {int root_count; } ;
struct root {int dummy; } ;


 int kfree (struct root*) ;

__attribute__((used)) static void root_destroy(void *priv, void *root_priv)
{
 struct root *root = root_priv;
 struct world *world = priv;

 world->root_count--;
 kfree(root);
}
