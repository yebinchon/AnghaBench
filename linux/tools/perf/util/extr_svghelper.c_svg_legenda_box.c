
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLOT_HEIGHT ;
 int fprintf (int ,char*,int,double,double,char const*) ;
 int svgfile ;

__attribute__((used)) static void svg_legenda_box(int X, const char *text, const char *style)
{
 double boxsize;
 boxsize = SLOT_HEIGHT / 2;

 fprintf(svgfile, "<rect x=\"%i\" width=\"%.8f\" y=\"0\" height=\"%.1f\" class=\"%s\"/>\n",
  X, boxsize, boxsize, style);
 fprintf(svgfile, "<text transform=\"translate(%.8f, %.8f)\" font-size=\"%.8fpt\">%s</text>\n",
  X + boxsize + 5, boxsize, 0.8 * boxsize, text);
}
