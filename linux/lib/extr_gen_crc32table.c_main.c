
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BE_TABLE_ROWS ;
 int BE_TABLE_SIZE ;
 int CRC_BE_BITS ;
 int CRC_LE_BITS ;
 int LE_TABLE_ROWS ;
 int LE_TABLE_SIZE ;
 int crc32cinit_le () ;
 int crc32ctable_le ;
 int crc32init_be () ;
 int crc32init_le () ;
 int crc32table_be ;
 int crc32table_le ;
 int output_table (int ,int,int,char*) ;
 int printf (char*,...) ;

int main(int argc, char** argv)
{
 printf("/* this file is generated - do not edit */\n\n");

 if (CRC_LE_BITS > 1) {
  crc32init_le();
  printf("static const u32 ____cacheline_aligned "
         "crc32table_le[%d][%d] = {",
         LE_TABLE_ROWS, LE_TABLE_SIZE);
  output_table(crc32table_le, LE_TABLE_ROWS,
        LE_TABLE_SIZE, "tole");
  printf("};\n");
 }

 if (CRC_BE_BITS > 1) {
  crc32init_be();
  printf("static const u32 ____cacheline_aligned "
         "crc32table_be[%d][%d] = {",
         BE_TABLE_ROWS, BE_TABLE_SIZE);
  output_table(crc32table_be, LE_TABLE_ROWS,
        BE_TABLE_SIZE, "tobe");
  printf("};\n");
 }
 if (CRC_LE_BITS > 1) {
  crc32cinit_le();
  printf("static const u32 ____cacheline_aligned "
         "crc32ctable_le[%d][%d] = {",
         LE_TABLE_ROWS, LE_TABLE_SIZE);
  output_table(crc32ctable_le, LE_TABLE_ROWS,
        LE_TABLE_SIZE, "tole");
  printf("};\n");
 }

 return 0;
}
