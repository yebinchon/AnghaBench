
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct persistent_ram_zone {TYPE_1__* buffer; } ;
struct TYPE_2__ {int size; } ;


 size_t atomic_read (int *) ;

__attribute__((used)) static inline size_t buffer_size(struct persistent_ram_zone *prz)
{
 return atomic_read(&prz->buffer->size);
}
