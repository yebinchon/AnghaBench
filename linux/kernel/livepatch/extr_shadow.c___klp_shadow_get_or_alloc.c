
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_shadow {unsigned long id; void* data; void* obj; int node; } ;
typedef int (* klp_shadow_ctor_t ) (void*,void*,void*) ;
typedef int gfp_t ;


 int WARN (int,char*,void*,unsigned long) ;
 int hash_add_rcu (int ,int *,unsigned long) ;
 int kfree (struct klp_shadow*) ;
 void* klp_shadow_get (void*,unsigned long) ;
 int klp_shadow_hash ;
 int klp_shadow_lock ;
 struct klp_shadow* kzalloc (size_t,int ) ;
 int pr_err (char*,void*,unsigned long,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (void*) ;

__attribute__((used)) static void *__klp_shadow_get_or_alloc(void *obj, unsigned long id,
           size_t size, gfp_t gfp_flags,
           klp_shadow_ctor_t ctor, void *ctor_data,
           bool warn_on_exist)
{
 struct klp_shadow *new_shadow;
 void *shadow_data;
 unsigned long flags;


 shadow_data = klp_shadow_get(obj, id);
 if (shadow_data)
  goto exists;






 new_shadow = kzalloc(size + sizeof(*new_shadow), gfp_flags);
 if (!new_shadow)
  return ((void*)0);


 spin_lock_irqsave(&klp_shadow_lock, flags);
 shadow_data = klp_shadow_get(obj, id);
 if (unlikely(shadow_data)) {




  spin_unlock_irqrestore(&klp_shadow_lock, flags);
  kfree(new_shadow);
  goto exists;
 }

 new_shadow->obj = obj;
 new_shadow->id = id;

 if (ctor) {
  int err;

  err = ctor(obj, new_shadow->data, ctor_data);
  if (err) {
   spin_unlock_irqrestore(&klp_shadow_lock, flags);
   kfree(new_shadow);
   pr_err("Failed to construct shadow variable <%p, %lx> (%d)\n",
          obj, id, err);
   return ((void*)0);
  }
 }


 hash_add_rcu(klp_shadow_hash, &new_shadow->node,
       (unsigned long)new_shadow->obj);
 spin_unlock_irqrestore(&klp_shadow_lock, flags);

 return new_shadow->data;

exists:
 if (warn_on_exist) {
  WARN(1, "Duplicate shadow variable <%p, %lx>\n", obj, id);
  return ((void*)0);
 }

 return shadow_data;
}
