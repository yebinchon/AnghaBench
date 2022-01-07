
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* utf32nfdi; unsigned int* utf32nfdicf; char* utf8nfdi; } ;


 char HANGUL ;
 int assert (int) ;
 void* malloc (int) ;
 int memcpy (unsigned int*,unsigned int*,int) ;
 int print_utf32nfdi (unsigned int) ;
 int printf (char*,...) ;
 TYPE_1__* unicode_data ;
 int verbose ;

__attribute__((used)) static void hangul_decompose(void)
{
 unsigned int sb = 0xAC00;
 unsigned int lb = 0x1100;
 unsigned int vb = 0x1161;
 unsigned int tb = 0x11a7;

 unsigned int vc = 21;
 unsigned int tc = 28;
 unsigned int nc = (vc * tc);

 unsigned int unichar;
 unsigned int mapping[4];
 unsigned int *um;
        int count;
 int i;

 if (verbose > 0)
  printf("Decomposing hangul\n");

 count = 0;
 for (unichar = 0xAC00; unichar <= 0xD7A3; unichar++) {
  unsigned int si = unichar - sb;
  unsigned int li = si / nc;
  unsigned int vi = (si % nc) / tc;
  unsigned int ti = si % tc;

  i = 0;
  mapping[i++] = lb + li;
  mapping[i++] = vb + vi;
  if (ti)
   mapping[i++] = tb + ti;
  mapping[i++] = 0;

  assert(!unicode_data[unichar].utf32nfdi);
  um = malloc(i * sizeof(unsigned int));
  memcpy(um, mapping, i * sizeof(unsigned int));
  unicode_data[unichar].utf32nfdi = um;

  assert(!unicode_data[unichar].utf32nfdicf);
  um = malloc(i * sizeof(unsigned int));
  memcpy(um, mapping, i * sizeof(unsigned int));
  unicode_data[unichar].utf32nfdicf = um;






  unicode_data[unichar].utf8nfdi = malloc(2);
  unicode_data[unichar].utf8nfdi[0] = HANGUL;
  unicode_data[unichar].utf8nfdi[1] = '\0';

  if (verbose > 1)
   print_utf32nfdi(unichar);

  count++;
 }
 if (verbose > 0)
  printf("Created %d entries\n", count);
}
