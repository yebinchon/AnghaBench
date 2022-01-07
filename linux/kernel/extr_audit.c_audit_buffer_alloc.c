
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_context {int dummy; } ;
struct audit_buffer {int gfp_mask; struct audit_context* ctx; int skb; } ;
typedef int gfp_t ;


 int AUDIT_BUFSIZ ;
 int audit_buffer_cache ;
 int audit_buffer_free (struct audit_buffer*) ;
 struct audit_buffer* kmem_cache_alloc (int ,int ) ;
 int nlmsg_new (int ,int ) ;
 int nlmsg_put (int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static struct audit_buffer *audit_buffer_alloc(struct audit_context *ctx,
            gfp_t gfp_mask, int type)
{
 struct audit_buffer *ab;

 ab = kmem_cache_alloc(audit_buffer_cache, gfp_mask);
 if (!ab)
  return ((void*)0);

 ab->skb = nlmsg_new(AUDIT_BUFSIZ, gfp_mask);
 if (!ab->skb)
  goto err;
 if (!nlmsg_put(ab->skb, 0, 0, type, 0, 0))
  goto err;

 ab->ctx = ctx;
 ab->gfp_mask = gfp_mask;

 return ab;

err:
 audit_buffer_free(ab);
 return ((void*)0);
}
