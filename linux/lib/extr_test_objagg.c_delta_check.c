
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tokey {int id; } ;


 int MAX_KEY_ID_DIFF ;

__attribute__((used)) static bool delta_check(void *priv, const void *parent_obj, const void *obj)
{
 const struct tokey *parent_key = parent_obj;
 const struct tokey *key = obj;
 int diff = key->id - parent_key->id;

 return diff >= 0 && diff <= MAX_KEY_ID_DIFF;
}
