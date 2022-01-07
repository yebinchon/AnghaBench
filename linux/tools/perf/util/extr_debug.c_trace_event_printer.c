
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;
typedef enum binary_printer_ops { ____Placeholder_binary_printer_ops } binary_printer_ops ;
typedef int FILE ;
 char* PERF_COLOR_BLUE ;
 int color_fprintf (int *,char const*,char*,...) ;
 int fprintf (int *,char*) ;
 int isprint (unsigned char) ;

__attribute__((used)) static int trace_event_printer(enum binary_printer_ops op,
          unsigned int val, void *extra, FILE *fp)
{
 const char *color = PERF_COLOR_BLUE;
 union perf_event *event = (union perf_event *)extra;
 unsigned char ch = (unsigned char)val;
 int printed = 0;

 switch (op) {
 case 134:
  printed += fprintf(fp, ".");
  printed += color_fprintf(fp, color, "\n. ... raw event: size %d bytes\n",
      event->header.size);
  break;
 case 132:
  printed += fprintf(fp, ".");
  break;
 case 137:
  printed += color_fprintf(fp, color, "  %04x: ", val);
  break;
 case 130:
  printed += color_fprintf(fp, color, " %02x", val);
  break;
 case 129:
  printed += color_fprintf(fp, color, "   ");
  break;
 case 128:
  printed += color_fprintf(fp, color, "  ");
  break;
 case 136:
  printed += color_fprintf(fp, color, "%c",
         isprint(ch) ? ch : '.');
  break;
 case 135:
  printed += color_fprintf(fp, color, " ");
  break;
 case 131:
  printed += color_fprintf(fp, color, "\n");
  break;
 case 133:
  printed += fprintf(fp, "\n");
  break;
 default:
  break;
 }

 return printed;
}
