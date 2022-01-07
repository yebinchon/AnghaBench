
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * clut_vga16 ;
 int die (char*) ;
 scalar_t__ is_equal (int ,int ) ;
 int ** logo_data ;
 unsigned int logo_height ;
 unsigned int logo_width ;
 int write_footer () ;
 int write_header () ;
 int write_hex (unsigned char) ;

__attribute__((used)) static void write_logo_vga16(void)
{
    unsigned int i, j, k;
    unsigned char val;


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++) {
     for (k = 0; k < 16; k++)
  if (is_equal(logo_data[i][j], clut_vga16[k]))
      break;
     if (k == 16)
  die("Image must use the 16 console colors only\n"
      "Use ppmquant(1) -map clut_vga16.ppm to reduce the number "
      "of colors\n");
 }


    write_header();


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++) {
     for (k = 0; k < 16; k++)
  if (is_equal(logo_data[i][j], clut_vga16[k]))
      break;
     val = k<<4;
     if (++j < logo_width) {
  for (k = 0; k < 16; k++)
      if (is_equal(logo_data[i][j], clut_vga16[k]))
   break;
  val |= k;
     }
     write_hex(val);
 }


    write_footer();
}
