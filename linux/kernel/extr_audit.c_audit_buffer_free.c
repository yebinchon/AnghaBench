
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int skb; } ;


 int audit_buffer_cache ;
 int kfree_skb (int ) ;
 int kmem_cache_free (int ,struct audit_buffer*) ;

__attribute__((used)) static void audit_buffer_free(struct audit_buffer *ab)
{
 if (!ab)
  return;

 kfree_skb(ab->skb);
 kmem_cache_free(audit_buffer_cache, ab);
}
