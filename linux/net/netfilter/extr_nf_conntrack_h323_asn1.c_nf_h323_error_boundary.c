
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstr {scalar_t__ cur; scalar_t__ end; scalar_t__ bit; } ;


 size_t BITS_PER_BYTE ;

__attribute__((used)) static int nf_h323_error_boundary(struct bitstr *bs, size_t bytes, size_t bits)
{
 bits += bs->bit;
 bytes += bits / BITS_PER_BYTE;
 if (bits % BITS_PER_BYTE > 0)
  bytes++;

 if (bs->cur + bytes > bs->end)
  return 1;

 return 0;
}
