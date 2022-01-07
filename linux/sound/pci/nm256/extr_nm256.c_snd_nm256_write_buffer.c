
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nm256 {int buffer_size; scalar_t__ buffer; TYPE_1__* card; scalar_t__ buffer_start; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int,int) ;
 int memcpy_toio (scalar_t__,void*,int) ;

__attribute__((used)) static inline void
snd_nm256_write_buffer(struct nm256 *chip, void *src, int offset, int size)
{
 offset -= chip->buffer_start;
 memcpy_toio(chip->buffer + offset, src, size);
}
