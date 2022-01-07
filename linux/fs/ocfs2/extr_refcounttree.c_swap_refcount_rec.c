
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_rec {int dummy; } ;


 int swap (struct ocfs2_refcount_rec,struct ocfs2_refcount_rec) ;

__attribute__((used)) static void swap_refcount_rec(void *a, void *b, int size)
{
 struct ocfs2_refcount_rec *l = a, *r = b;

 swap(*l, *r);
}
