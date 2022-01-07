
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_bitmap {int bitmap; } ;
struct ida {int xa; } ;


 unsigned int BITS_PER_XA_VALUE ;
 int BUG_ON (int) ;
 unsigned int IDA_BITMAP_BITS ;
 int WARN (int,char*,unsigned int) ;
 int XA_FREE_MARK ;
 int XA_STATE (int ,int *,unsigned int) ;
 int __clear_bit (unsigned int,int ) ;
 scalar_t__ bitmap_empty (int ,unsigned int) ;
 int kfree (struct ida_bitmap*) ;
 int test_bit (unsigned int,int ) ;
 scalar_t__ xa_is_value (struct ida_bitmap*) ;
 int * xa_mk_value (unsigned long) ;
 unsigned long xa_to_value (struct ida_bitmap*) ;
 int xas ;
 struct ida_bitmap* xas_load (int *) ;
 int xas_lock_irqsave (int *,unsigned long) ;
 int xas_set_mark (int *,int ) ;
 int xas_store (int *,int *) ;
 int xas_unlock_irqrestore (int *,unsigned long) ;

void ida_free(struct ida *ida, unsigned int id)
{
 XA_STATE(xas, &ida->xa, id / IDA_BITMAP_BITS);
 unsigned bit = id % IDA_BITMAP_BITS;
 struct ida_bitmap *bitmap;
 unsigned long flags;

 BUG_ON((int)id < 0);

 xas_lock_irqsave(&xas, flags);
 bitmap = xas_load(&xas);

 if (xa_is_value(bitmap)) {
  unsigned long v = xa_to_value(bitmap);
  if (bit >= BITS_PER_XA_VALUE)
   goto err;
  if (!(v & (1UL << bit)))
   goto err;
  v &= ~(1UL << bit);
  if (!v)
   goto delete;
  xas_store(&xas, xa_mk_value(v));
 } else {
  if (!test_bit(bit, bitmap->bitmap))
   goto err;
  __clear_bit(bit, bitmap->bitmap);
  xas_set_mark(&xas, XA_FREE_MARK);
  if (bitmap_empty(bitmap->bitmap, IDA_BITMAP_BITS)) {
   kfree(bitmap);
delete:
   xas_store(&xas, ((void*)0));
  }
 }
 xas_unlock_irqrestore(&xas, flags);
 return;
 err:
 xas_unlock_irqrestore(&xas, flags);
 WARN(1, "ida_free called for id=%d which is not allocated.\n", id);
}
