
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {scalar_t__ timeout; scalar_t__ extensions; struct bitmap_port* data; } ;
struct bitmap_port {scalar_t__ first_port; scalar_t__ last_port; } ;



__attribute__((used)) static bool
bitmap_port_same_set(const struct ip_set *a, const struct ip_set *b)
{
 const struct bitmap_port *x = a->data;
 const struct bitmap_port *y = b->data;

 return x->first_port == y->first_port &&
        x->last_port == y->last_port &&
        a->timeout == b->timeout &&
        a->extensions == b->extensions;
}
