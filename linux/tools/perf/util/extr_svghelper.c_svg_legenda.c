
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int svg_legenda_box (int,char*,char*) ;
 int svgfile ;

void svg_legenda(void)
{
 if (!svgfile)
  return;

 fprintf(svgfile, "<g>\n");
 svg_legenda_box(0, "Running", "sample");
 svg_legenda_box(100, "Idle","c1");
 svg_legenda_box(200, "Deeper Idle", "c3");
 svg_legenda_box(350, "Deepest Idle", "c6");
 svg_legenda_box(550, "Sleeping", "process2");
 svg_legenda_box(650, "Waiting for cpu", "waiting");
 svg_legenda_box(800, "Blocked on IO", "blocked");
 fprintf(svgfile, "</g>\n");
}
