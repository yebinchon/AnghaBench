
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int aux_len; int flags; void* aux; void* inline_aux; } ;


 int FSCACHE_COOKIE_AUX_UPDATED ;
 scalar_t__ memcmp (void*,void const*,int) ;
 int memcpy (void*,void const*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline
void fscache_update_aux(struct fscache_cookie *cookie, const void *aux_data)
{
 void *p;

 if (!aux_data)
  return;
 if (cookie->aux_len <= sizeof(cookie->inline_aux))
  p = cookie->inline_aux;
 else
  p = cookie->aux;

 if (memcmp(p, aux_data, cookie->aux_len) != 0) {
  memcpy(p, aux_data, cookie->aux_len);
  set_bit(FSCACHE_COOKIE_AUX_UPDATED, &cookie->flags);
 }
}
