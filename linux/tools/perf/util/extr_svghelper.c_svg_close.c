
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int fprintf (int *,char*) ;
 int * svgfile ;

void svg_close(void)
{
 if (svgfile) {
  fprintf(svgfile, "</svg>\n");
  fclose(svgfile);
  svgfile = ((void*)0);
 }
}
