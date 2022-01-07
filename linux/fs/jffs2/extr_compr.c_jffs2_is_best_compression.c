
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jffs2_compressor {int compr; } ;


 int FAVOUR_LZO_PERCENT ;
 int JFFS2_COMPR_LZO ;


 int jffs2_compression_mode ;

__attribute__((used)) static int jffs2_is_best_compression(struct jffs2_compressor *this,
  struct jffs2_compressor *best, uint32_t size, uint32_t bestsize)
{
 switch (jffs2_compression_mode) {
 case 128:
  if (bestsize > size)
   return 1;
  return 0;
 case 129:
  if ((this->compr == JFFS2_COMPR_LZO) && (bestsize > size))
   return 1;
  if ((best->compr != JFFS2_COMPR_LZO) && (bestsize > size))
   return 1;
  if ((this->compr == JFFS2_COMPR_LZO) && (bestsize > (size * FAVOUR_LZO_PERCENT / 100)))
   return 1;
  if ((bestsize * FAVOUR_LZO_PERCENT / 100) > size)
   return 1;

  return 0;
 }

 return 0;
}
