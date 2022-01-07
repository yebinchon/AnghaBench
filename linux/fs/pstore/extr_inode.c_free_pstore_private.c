
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_private {struct pstore_private* record; struct pstore_private* buf; } ;


 int kfree (struct pstore_private*) ;

__attribute__((used)) static void free_pstore_private(struct pstore_private *private)
{
 if (!private)
  return;
 if (private->record) {
  kfree(private->record->buf);
  kfree(private->record);
 }
 kfree(private);
}
