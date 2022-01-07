
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int svg_legenda_box (int,char*,char*) ;
 int svgfile ;

void svg_io_legenda(void)
{
 if (!svgfile)
  return;

 fprintf(svgfile, "<g>\n");
 svg_legenda_box(0, "Disk", "disk");
 svg_legenda_box(100, "Network", "net");
 svg_legenda_box(200, "Sync", "sync");
 svg_legenda_box(300, "Poll", "poll");
 svg_legenda_box(400, "Error", "error");
 fprintf(svgfile, "</g>\n");
}
