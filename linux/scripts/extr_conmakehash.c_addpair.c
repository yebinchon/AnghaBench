
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_DATAERR ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int* unicount ;
 int** unitable ;

__attribute__((used)) static void addpair(int fp, int un)
{
  int i;

  if ( un <= 0xfffe )
    {


      for ( i = 0 ; i < unicount[fp] ; i++ )
 if ( unitable[fp][i] == un )
   return;



      if ( unicount[fp] > 254 )
 {
   fprintf(stderr, "ERROR: Only 255 unicodes/glyph permitted!\n");
   exit(EX_DATAERR);
 }

      unitable[fp][unicount[fp]] = un;
      unicount[fp]++;
    }


}
