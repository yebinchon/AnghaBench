
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_set {int negset; int types; } ;


 int ebitmap_init (int *) ;

__attribute__((used)) static void type_set_init(struct type_set *t)
{
 ebitmap_init(&t->types);
 ebitmap_init(&t->negset);
}
