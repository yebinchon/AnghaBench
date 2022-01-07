
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {unsigned long excess_ref; int lock; } ;


 void* BYTES_PER_POINTER ;
 unsigned long* PTR_ALIGN (void*,void*) ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ color_gray (struct kmemleak_object*) ;
 int kasan_disable_current () ;
 int kasan_enable_current () ;
 scalar_t__ kasan_reset_tag (void*) ;
 int kmemleak_lock ;
 struct kmemleak_object* lookup_object (unsigned long,int) ;
 unsigned long max_addr ;
 unsigned long min_addr ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ scan_should_stop () ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int update_refs (struct kmemleak_object*) ;

__attribute__((used)) static void scan_block(void *_start, void *_end,
         struct kmemleak_object *scanned)
{
 unsigned long *ptr;
 unsigned long *start = PTR_ALIGN(_start, BYTES_PER_POINTER);
 unsigned long *end = _end - (BYTES_PER_POINTER - 1);
 unsigned long flags;
 unsigned long untagged_ptr;

 read_lock_irqsave(&kmemleak_lock, flags);
 for (ptr = start; ptr < end; ptr++) {
  struct kmemleak_object *object;
  unsigned long pointer;
  unsigned long excess_ref;

  if (scan_should_stop())
   break;

  kasan_disable_current();
  pointer = *ptr;
  kasan_enable_current();

  untagged_ptr = (unsigned long)kasan_reset_tag((void *)pointer);
  if (untagged_ptr < min_addr || untagged_ptr >= max_addr)
   continue;







  object = lookup_object(pointer, 1);
  if (!object)
   continue;
  if (object == scanned)

   continue;






  spin_lock_nested(&object->lock, SINGLE_DEPTH_NESTING);

  if (color_gray(object)) {
   excess_ref = object->excess_ref;

  } else {
   excess_ref = 0;
   update_refs(object);
  }
  spin_unlock(&object->lock);

  if (excess_ref) {
   object = lookup_object(excess_ref, 0);
   if (!object)
    continue;
   if (object == scanned)

    continue;
   spin_lock_nested(&object->lock, SINGLE_DEPTH_NESTING);
   update_refs(object);
   spin_unlock(&object->lock);
  }
 }
 read_unlock_irqrestore(&kmemleak_lock, flags);
}
