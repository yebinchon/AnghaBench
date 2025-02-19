
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 double MIN_TEXT_SIZE ;
 int NSEC_PER_MSEC ;
 double SLOT_HEIGHT ;
 int SLOT_MULT ;
 int fprintf (int ,char*,...) ;
 double round_text_size (double) ;
 int svgfile ;
 double time2pixels (int) ;
 char* time_to_string (int) ;

void svg_waiting(int Yslot, int cpu, u64 start, u64 end, const char *backtrace)
{
 char *text;
 const char *style;
 double font_size;

 if (!svgfile)
  return;

 style = "waiting";

 if (end-start > 10 * NSEC_PER_MSEC)
  style = "WAITING";

 text = time_to_string(end-start);

 font_size = 1.0 * (time2pixels(end)-time2pixels(start));

 if (font_size > 3)
  font_size = 3;

 font_size = round_text_size(font_size);

 fprintf(svgfile, "<g transform=\"translate(%.8f,%.8f)\">\n", time2pixels(start), Yslot * SLOT_MULT);
 fprintf(svgfile, "<title>#%d waiting %s</title>\n", cpu, time_to_string(end - start));
 if (backtrace)
  fprintf(svgfile, "<desc>Waiting on:\n%s</desc>\n", backtrace);
 fprintf(svgfile, "<rect x=\"0\" width=\"%.8f\" y=\"0\" height=\"%.1f\" class=\"%s\"/>\n",
  time2pixels(end)-time2pixels(start), SLOT_HEIGHT, style);
 if (font_size > MIN_TEXT_SIZE)
  fprintf(svgfile, "<text transform=\"rotate(90)\" font-size=\"%.8fpt\"> %s</text>\n",
   font_size, text);
 fprintf(svgfile, "</g>\n");
}
