
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int gfmul (int,int) ;
 int gfpow (int,int) ;
 int printf (char*,...) ;

int main(int argc, char *argv[])
{
 int i, j, k;
 uint8_t v;
 uint8_t exptbl[256], invtbl[256];

 printf("#include <linux/raid/pq.h>\n");
 printf("#include <linux/export.h>\n");


 printf("\nconst u8  __attribute__((aligned(256)))\n"
  "raid6_gfmul[256][256] =\n"
  "{\n");
 for (i = 0; i < 256; i++) {
  printf("\t{\n");
  for (j = 0; j < 256; j += 8) {
   printf("\t\t");
   for (k = 0; k < 8; k++)
    printf("0x%02x,%c", gfmul(i, j + k),
           (k == 7) ? '\n' : ' ');
  }
  printf("\t},\n");
 }
 printf("};\n");
 printf("#ifdef __KERNEL__\n");
 printf("EXPORT_SYMBOL(raid6_gfmul);\n");
 printf("#endif\n");


 printf("\nconst u8  __attribute__((aligned(256)))\n"
  "raid6_vgfmul[256][32] =\n"
  "{\n");
 for (i = 0; i < 256; i++) {
  printf("\t{\n");
  for (j = 0; j < 16; j += 8) {
   printf("\t\t");
   for (k = 0; k < 8; k++)
    printf("0x%02x,%c", gfmul(i, j + k),
           (k == 7) ? '\n' : ' ');
  }
  for (j = 0; j < 16; j += 8) {
   printf("\t\t");
   for (k = 0; k < 8; k++)
    printf("0x%02x,%c", gfmul(i, (j + k) << 4),
           (k == 7) ? '\n' : ' ');
  }
  printf("\t},\n");
 }
 printf("};\n");
 printf("#ifdef __KERNEL__\n");
 printf("EXPORT_SYMBOL(raid6_vgfmul);\n");
 printf("#endif\n");


 v = 1;
 printf("\nconst u8 __attribute__((aligned(256)))\n"
        "raid6_gfexp[256] =\n" "{\n");
 for (i = 0; i < 256; i += 8) {
  printf("\t");
  for (j = 0; j < 8; j++) {
   exptbl[i + j] = v;
   printf("0x%02x,%c", v, (j == 7) ? '\n' : ' ');
   v = gfmul(v, 2);
   if (v == 1)
    v = 0;
  }
 }
 printf("};\n");
 printf("#ifdef __KERNEL__\n");
 printf("EXPORT_SYMBOL(raid6_gfexp);\n");
 printf("#endif\n");


 printf("\nconst u8 __attribute__((aligned(256)))\n"
        "raid6_gflog[256] =\n" "{\n");
 for (i = 0; i < 256; i += 8) {
  printf("\t");
  for (j = 0; j < 8; j++) {
   v = 255;
   for (k = 0; k < 256; k++)
    if (exptbl[k] == (i + j)) {
     v = k;
     break;
    }
   printf("0x%02x,%c", v, (j == 7) ? '\n' : ' ');
  }
 }
 printf("};\n");
 printf("#ifdef __KERNEL__\n");
 printf("EXPORT_SYMBOL(raid6_gflog);\n");
 printf("#endif\n");


 printf("\nconst u8 __attribute__((aligned(256)))\n"
        "raid6_gfinv[256] =\n" "{\n");
 for (i = 0; i < 256; i += 8) {
  printf("\t");
  for (j = 0; j < 8; j++) {
   invtbl[i + j] = v = gfpow(i + j, 254);
   printf("0x%02x,%c", v, (j == 7) ? '\n' : ' ');
  }
 }
 printf("};\n");
 printf("#ifdef __KERNEL__\n");
 printf("EXPORT_SYMBOL(raid6_gfinv);\n");
 printf("#endif\n");


 printf("\nconst u8 __attribute__((aligned(256)))\n"
        "raid6_gfexi[256] =\n" "{\n");
 for (i = 0; i < 256; i += 8) {
  printf("\t");
  for (j = 0; j < 8; j++)
   printf("0x%02x,%c", invtbl[exptbl[i + j] ^ 1],
          (j == 7) ? '\n' : ' ');
 }
 printf("};\n");
 printf("#ifdef __KERNEL__\n");
 printf("EXPORT_SYMBOL(raid6_gfexi);\n");
 printf("#endif\n");

 return 0;
}
