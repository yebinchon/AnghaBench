
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int idr_alloc (struct idr*,char*,int ,int ,int ) ;
 int idr_destroy (struct idr*) ;
 char* idr_find (struct idr*,int ) ;
 int idr_for_each_entry (struct idr*,void*,int) ;
 int idr_is_empty (struct idr*) ;
 int idr_remove (struct idr*,int) ;
 int idr_replace (struct idr*,char*,int ) ;

__attribute__((used)) static void idr_align_test(struct idr *idr)
{
 char name[] = "Motorola 68000";
 int i, id;
 void *entry;

 for (i = 0; i < 9; i++) {
  BUG_ON(idr_alloc(idr, &name[i], 0, 0, GFP_KERNEL) != i);
  idr_for_each_entry(idr, entry, id);
 }
 idr_destroy(idr);

 for (i = 1; i < 10; i++) {
  BUG_ON(idr_alloc(idr, &name[i], 0, 0, GFP_KERNEL) != i - 1);
  idr_for_each_entry(idr, entry, id);
 }
 idr_destroy(idr);

 for (i = 2; i < 11; i++) {
  BUG_ON(idr_alloc(idr, &name[i], 0, 0, GFP_KERNEL) != i - 2);
  idr_for_each_entry(idr, entry, id);
 }
 idr_destroy(idr);

 for (i = 3; i < 12; i++) {
  BUG_ON(idr_alloc(idr, &name[i], 0, 0, GFP_KERNEL) != i - 3);
  idr_for_each_entry(idr, entry, id);
 }
 idr_destroy(idr);

 for (i = 0; i < 8; i++) {
  BUG_ON(idr_alloc(idr, &name[i], 0, 0, GFP_KERNEL) != 0);
  BUG_ON(idr_alloc(idr, &name[i + 1], 0, 0, GFP_KERNEL) != 1);
  idr_for_each_entry(idr, entry, id);
  idr_remove(idr, 1);
  idr_for_each_entry(idr, entry, id);
  idr_remove(idr, 0);
  BUG_ON(!idr_is_empty(idr));
 }

 for (i = 0; i < 8; i++) {
  BUG_ON(idr_alloc(idr, ((void*)0), 0, 0, GFP_KERNEL) != 0);
  idr_for_each_entry(idr, entry, id);
  idr_replace(idr, &name[i], 0);
  idr_for_each_entry(idr, entry, id);
  BUG_ON(idr_find(idr, 0) != &name[i]);
  idr_remove(idr, 0);
 }

 for (i = 0; i < 8; i++) {
  BUG_ON(idr_alloc(idr, &name[i], 0, 0, GFP_KERNEL) != 0);
  BUG_ON(idr_alloc(idr, ((void*)0), 0, 0, GFP_KERNEL) != 1);
  idr_remove(idr, 1);
  idr_for_each_entry(idr, entry, id);
  idr_replace(idr, &name[i + 1], 0);
  idr_for_each_entry(idr, entry, id);
  idr_remove(idr, 0);
 }
}
