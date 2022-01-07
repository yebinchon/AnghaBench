
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fasync_struct {int dummy; } ;


 int fasync_cache ;
 int kmem_cache_free (int ,struct fasync_struct*) ;

void fasync_free(struct fasync_struct *new)
{
 kmem_cache_free(fasync_cache, new);
}
