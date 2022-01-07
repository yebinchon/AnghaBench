
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;



__attribute__((used)) static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
          size_t buffer_size, u64 head)
{
 u64 i, watermark;
 u64 *buf = (u64 *)buffer;
 size_t buf_size = buffer_size;





 watermark = buf_size - 512;





 if (head >= buffer_size)
  return 1;
 if (head > watermark)
  watermark = head;




 watermark >>= 3;
 buf_size >>= 3;





 for (i = watermark; i < buf_size; i++)
  if (buf[i])
   return 1;

 return 0;
}
