
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_arp_table {int usage; } ;


 int kfree (struct lec_arp_table*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void lec_arp_put(struct lec_arp_table *entry)
{
 if (refcount_dec_and_test(&entry->usage))
  kfree(entry);
}
