
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 double SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,...) ;
 int svgfile ;
 double time2pixels (int ) ;

void svg_wakeline(u64 start, int row1, int row2, const char *backtrace)
{
 double height;

 if (!svgfile)
  return;


 fprintf(svgfile, "<g>\n");

 if (backtrace)
  fprintf(svgfile, "<desc>%s</desc>\n", backtrace);

 if (row1 < row2)
  fprintf(svgfile, "<line x1=\"%.8f\" y1=\"%.2f\" x2=\"%.8f\" y2=\"%.2f\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
   time2pixels(start), row1 * SLOT_MULT + SLOT_HEIGHT, time2pixels(start), row2 * SLOT_MULT);
 else
  fprintf(svgfile, "<line x1=\"%.8f\" y1=\"%.2f\" x2=\"%.8f\" y2=\"%.2f\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
   time2pixels(start), row2 * SLOT_MULT + SLOT_HEIGHT, time2pixels(start), row1 * SLOT_MULT);

 height = row1 * SLOT_MULT;
 if (row2 > row1)
  height += SLOT_HEIGHT;
 fprintf(svgfile, "<circle  cx=\"%.8f\" cy=\"%.2f\" r = \"0.01\"  style=\"fill:rgb(32,255,32)\"/>\n",
   time2pixels(start), height);

 fprintf(svgfile, "</g>\n");
}
