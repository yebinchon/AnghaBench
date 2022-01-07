
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 double MIN_TEXT_SIZE ;
 int SLOT_HEIGHT ;
 double SLOT_MULT ;
 double cpu2y (int) ;
 int fprintf (int ,char*,...) ;
 double round_text_size (double) ;
 scalar_t__ strstr (char const*,scalar_t__) ;
 scalar_t__ svg_highlight ;
 scalar_t__ svg_highlight_name ;
 int svgfile ;
 double time2pixels (scalar_t__) ;
 char* time_to_string (scalar_t__) ;

void svg_process(int cpu, u64 start, u64 end, int pid, const char *name, const char *backtrace)
{
 double width;
 const char *type;

 if (!svgfile)
  return;

 if (svg_highlight && end - start >= svg_highlight)
  type = "sample_hi";
 else if (svg_highlight_name && strstr(name, svg_highlight_name))
  type = "sample_hi";
 else
  type = "sample";

 fprintf(svgfile, "<g transform=\"translate(%.8f,%.8f)\">\n", time2pixels(start), cpu2y(cpu));
 fprintf(svgfile, "<title>%d %s running %s</title>\n", pid, name, time_to_string(end - start));
 if (backtrace)
  fprintf(svgfile, "<desc>Switched because:\n%s</desc>\n", backtrace);
 fprintf(svgfile, "<rect x=\"0\" width=\"%.8f\" y=\"0\" height=\"%.1f\" class=\"%s\"/>\n",
  time2pixels(end)-time2pixels(start), SLOT_MULT+SLOT_HEIGHT, type);
 width = time2pixels(end)-time2pixels(start);
 if (width > 6)
  width = 6;

 width = round_text_size(width);

 if (width > MIN_TEXT_SIZE)
  fprintf(svgfile, "<text transform=\"rotate(90)\" font-size=\"%.8fpt\">%s</text>\n",
   width, name);

 fprintf(svgfile, "</g>\n");
}
