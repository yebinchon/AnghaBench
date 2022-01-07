
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso_directory_record {int* flags; int ext_attr_length; int extent; } ;


 scalar_t__ isonum_711 (int ) ;
 scalar_t__ isonum_733 (int ) ;

__attribute__((used)) static inline void
isofs_normalize_block_and_offset(struct iso_directory_record* de,
     unsigned long *block,
     unsigned long *offset)
{

 if (de->flags[0] & 2) {
  *offset = 0;
  *block = (unsigned long)isonum_733(de->extent)
   + (unsigned long)isonum_711(de->ext_attr_length);
 }
}
