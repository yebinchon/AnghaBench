
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avtab_key {int dummy; } ;
struct avtab_datum {int dummy; } ;
struct avtab {int dummy; } ;


 int avtab_insert (struct avtab*,struct avtab_key*,struct avtab_datum*) ;

__attribute__((used)) static int avtab_insertf(struct avtab *a, struct avtab_key *k,
    struct avtab_datum *d, void *p)
{
 return avtab_insert(a, k, d);
}
