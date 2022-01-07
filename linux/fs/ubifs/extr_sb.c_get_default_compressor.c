
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int UBIFS_COMPR_LZO ;
 int UBIFS_COMPR_NONE ;
 int UBIFS_COMPR_ZLIB ;
 scalar_t__ ubifs_compr_present (struct ubifs_info*,int) ;

__attribute__((used)) static int get_default_compressor(struct ubifs_info *c)
{
 if (ubifs_compr_present(c, UBIFS_COMPR_LZO))
  return UBIFS_COMPR_LZO;

 if (ubifs_compr_present(c, UBIFS_COMPR_ZLIB))
  return UBIFS_COMPR_ZLIB;

 return UBIFS_COMPR_NONE;
}
