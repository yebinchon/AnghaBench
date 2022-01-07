
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_transaction {size_t size; } ;
struct file {struct multi_transaction* private_data; } ;


 int AA_BUG (int) ;
 size_t MULTI_TRANSACTION_LIMIT ;
 int multi_transaction_lock ;
 int put_multi_transaction (struct multi_transaction*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void multi_transaction_set(struct file *file,
      struct multi_transaction *new, size_t n)
{
 struct multi_transaction *old;

 AA_BUG(n > MULTI_TRANSACTION_LIMIT);

 new->size = n;
 spin_lock(&multi_transaction_lock);
 old = (struct multi_transaction *) file->private_data;
 file->private_data = new;
 spin_unlock(&multi_transaction_lock);
 put_multi_transaction(old);
}
