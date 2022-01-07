
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int use; } ;
typedef TYPE_1__ eg_cache_entry ;


 int kzfree (TYPE_1__*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void eg_cache_put(eg_cache_entry *entry)
{
 if (refcount_dec_and_test(&entry->use)) {
  kzfree(entry);
 }
}
