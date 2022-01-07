
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ red; } ;


 int die (char*) ;
 int is_black (TYPE_1__) ;
 int is_white (TYPE_1__) ;
 TYPE_1__** logo_data ;
 unsigned int logo_height ;
 unsigned int logo_width ;
 int write_footer () ;
 int write_header () ;
 int write_hex (unsigned char) ;

__attribute__((used)) static void write_logo_mono(void)
{
    unsigned int i, j;
    unsigned char val, bit;


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++)
     if (!is_black(logo_data[i][j]) && !is_white(logo_data[i][j]))
  die("Image must be monochrome\n");


    write_header();


    for (i = 0; i < logo_height; i++) {
 for (j = 0; j < logo_width;) {
     for (val = 0, bit = 0x80; bit && j < logo_width; j++, bit >>= 1)
  if (logo_data[i][j].red)
      val |= bit;
     write_hex(val);
 }
    }


    write_footer();
}
