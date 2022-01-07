
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kmemleak_object {scalar_t__ checksum; int size; scalar_t__ pointer; } ;


 scalar_t__ crc32 (int ,void*,int ) ;
 int kasan_disable_current () ;
 int kasan_enable_current () ;

__attribute__((used)) static bool update_checksum(struct kmemleak_object *object)
{
 u32 old_csum = object->checksum;

 kasan_disable_current();
 object->checksum = crc32(0, (void *)object->pointer, object->size);
 kasan_enable_current();

 return object->checksum != old_csum;
}
