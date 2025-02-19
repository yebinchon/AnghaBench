
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tokey {unsigned int id; } ;
struct objagg_obj {int dummy; } ;
struct delta {scalar_t__ key_id_diff; } ;


 struct delta* objagg_obj_delta_priv (struct objagg_obj*) ;
 struct tokey* objagg_obj_root_priv (struct objagg_obj*) ;

__attribute__((used)) static unsigned int obj_to_key_id(struct objagg_obj *objagg_obj)
{
 const struct tokey *root_key;
 const struct delta *delta;
 unsigned int key_id;

 root_key = objagg_obj_root_priv(objagg_obj);
 key_id = root_key->id;
 delta = objagg_obj_delta_priv(objagg_obj);
 if (delta)
  key_id += delta->key_id_diff;
 return key_id;
}
