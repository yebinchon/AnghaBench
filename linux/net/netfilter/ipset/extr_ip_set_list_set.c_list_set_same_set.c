
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_set {scalar_t__ size; } ;
struct ip_set {scalar_t__ timeout; scalar_t__ extensions; struct list_set* data; } ;



__attribute__((used)) static bool
list_set_same_set(const struct ip_set *a, const struct ip_set *b)
{
 const struct list_set *x = a->data;
 const struct list_set *y = b->data;

 return x->size == y->size &&
        a->timeout == b->timeout &&
        a->extensions == b->extensions;
}
