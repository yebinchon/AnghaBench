
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;


 int SLOT_HEIGHT ;
 double SLOT_MULT ;
 double cpu2y (int) ;
 char* cpu_model () ;
 int first_time ;
 int fprintf (int ,char*,...) ;
 int last_time ;
 void* max_freq ;
 int sprintf (char*,char*,int) ;
 int svgfile ;
 double time2pixels (int ) ;
 void* turbo_frequency ;

void svg_cpu_box(int cpu, u64 __max_freq, u64 __turbo_freq)
{
 char cpu_string[80];
 if (!svgfile)
  return;

 max_freq = __max_freq;
 turbo_frequency = __turbo_freq;

 fprintf(svgfile, "<g>\n");

 fprintf(svgfile, "<rect x=\"%.8f\" width=\"%.8f\" y=\"%.1f\" height=\"%.1f\" class=\"cpu\"/>\n",
  time2pixels(first_time),
  time2pixels(last_time)-time2pixels(first_time),
  cpu2y(cpu), SLOT_MULT+SLOT_HEIGHT);

 sprintf(cpu_string, "CPU %i", (int)cpu);
 fprintf(svgfile, "<text x=\"%.8f\" y=\"%.8f\">%s</text>\n",
  10+time2pixels(first_time), cpu2y(cpu) + SLOT_HEIGHT/2, cpu_string);

 fprintf(svgfile, "<text transform=\"translate(%.8f,%.8f)\" font-size=\"1.25pt\">%s</text>\n",
  10+time2pixels(first_time), cpu2y(cpu) + SLOT_MULT + SLOT_HEIGHT - 4, cpu_model());

 fprintf(svgfile, "</g>\n");
}
