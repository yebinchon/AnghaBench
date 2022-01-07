
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cell_t ;
typedef int FILE ;


 int fprintf (int *,char*,int,int,int,int) ;

__attribute__((used)) static void asm_emit_cell(void *e, cell_t val)
{
 FILE *f = e;

 fprintf(f, "\t.byte 0x%02x; .byte 0x%02x; .byte 0x%02x; .byte 0x%02x\n",
  (val >> 24) & 0xff, (val >> 16) & 0xff,
  (val >> 8) & 0xff, val & 0xff);
}
