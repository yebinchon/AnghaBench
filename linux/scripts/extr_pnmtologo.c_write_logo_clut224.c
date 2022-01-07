
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int red; unsigned int green; unsigned int blue; } ;


 unsigned int MAX_LINUX_LOGO_COLORS ;
 int die (char*,unsigned int) ;
 int fprintf (int ,char*,char*) ;
 int fputs (char*,int ) ;
 scalar_t__ is_equal (TYPE_1__,TYPE_1__) ;
 TYPE_1__* logo_clut ;
 unsigned int logo_clutsize ;
 TYPE_1__** logo_data ;
 unsigned int logo_height ;
 unsigned int logo_width ;
 char* logoname ;
 int out ;
 int write_footer () ;
 int write_header () ;
 int write_hex (unsigned int) ;
 scalar_t__ write_hex_cnt ;

__attribute__((used)) static void write_logo_clut224(void)
{
    unsigned int i, j, k;


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++) {
     for (k = 0; k < logo_clutsize; k++)
  if (is_equal(logo_data[i][j], logo_clut[k]))
      break;
     if (k == logo_clutsize) {
  if (logo_clutsize == MAX_LINUX_LOGO_COLORS)
      die("Image has more than %d colors\n"
   "Use ppmquant(1) to reduce the number of colors\n",
   MAX_LINUX_LOGO_COLORS);
  logo_clut[logo_clutsize++] = logo_data[i][j];
     }
 }


    write_header();


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++) {
     for (k = 0; k < logo_clutsize; k++)
  if (is_equal(logo_data[i][j], logo_clut[k]))
      break;
     write_hex(k+32);
 }
    fputs("\n};\n\n", out);


    fprintf(out, "static unsigned char %s_clut[] __initdata = {\n",
     logoname);
    write_hex_cnt = 0;
    for (i = 0; i < logo_clutsize; i++) {
 write_hex(logo_clut[i].red);
 write_hex(logo_clut[i].green);
 write_hex(logo_clut[i].blue);
    }


    write_footer();
}
