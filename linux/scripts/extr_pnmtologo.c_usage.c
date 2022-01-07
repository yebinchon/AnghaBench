
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,int ) ;
 int programname ;

__attribute__((used)) static void usage(void)
{
    die("\n"
 "Usage: %s [options] <filename>\n"
 "\n"
 "Valid options:\n"
 "    -h          : display this usage information\n"
 "    -n <name>   : specify logo name (default: linux_logo)\n"
 "    -o <output> : output to file <output> instead of stdout\n"
 "    -t <type>   : specify logo type, one of\n"
 "                      mono    : monochrome black/white\n"
 "                      vga16   : 16 colors VGA text palette\n"
 "                      clut224 : 224 colors (default)\n"
 "                      gray256 : 256 levels grayscale\n"
 "\n", programname);
}
