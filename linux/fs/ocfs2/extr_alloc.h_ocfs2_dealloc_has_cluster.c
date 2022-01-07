
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_cached_dealloc_ctxt {int * c_global_allocator; } ;



__attribute__((used)) static inline int ocfs2_dealloc_has_cluster(struct ocfs2_cached_dealloc_ctxt *c)
{
 return c->c_global_allocator != ((void*)0);
}
