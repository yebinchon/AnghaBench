
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_preparsed_payload {int dummy; } ;
struct key {int sem; TYPE_1__* type; } ;
typedef int key_ref_t ;
struct TYPE_2__ {int (* update ) (struct key*,struct key_preparsed_payload*) ;} ;


 int EEXIST ;
 int ERR_PTR (int) ;
 int KEY_NEED_WRITE ;
 int down_write (int *) ;
 int key_permission (int ,int ) ;
 int key_put (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 int mark_key_instantiated (struct key*,int ) ;
 int stub1 (struct key*,struct key_preparsed_payload*) ;
 int up_write (int *) ;

__attribute__((used)) static inline key_ref_t __key_update(key_ref_t key_ref,
         struct key_preparsed_payload *prep)
{
 struct key *key = key_ref_to_ptr(key_ref);
 int ret;


 ret = key_permission(key_ref, KEY_NEED_WRITE);
 if (ret < 0)
  goto error;

 ret = -EEXIST;
 if (!key->type->update)
  goto error;

 down_write(&key->sem);

 ret = key->type->update(key, prep);
 if (ret == 0)

  mark_key_instantiated(key, 0);

 up_write(&key->sem);

 if (ret < 0)
  goto error;
out:
 return key_ref;

error:
 key_put(key);
 key_ref = ERR_PTR(ret);
 goto out;
}
