
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_data {int hit_nul; int is_printable; int line_no; } ;
typedef enum binary_printer_ops { ____Placeholder_binary_printer_ops } binary_printer_ops ;
typedef int FILE ;
 int fprintf (int *,char*,...) ;
 int isprint (unsigned char) ;

__attribute__((used)) static int sample__fprintf_bpf_output(enum binary_printer_ops op,
          unsigned int val,
          void *extra, FILE *fp)
{
 unsigned char ch = (unsigned char)val;
 struct printer_data *printer_data = extra;
 int printed = 0;

 switch (op) {
 case 134:
  printed += fprintf(fp, "\n");
  break;
 case 132:
  printed += fprintf(fp, "%17s", !printer_data->line_no ? "BPF output:" :
              "           ");
  break;
 case 137:
  printed += fprintf(fp, " %04x:", val);
  break;
 case 130:
  printed += fprintf(fp, " %02x", val);
  break;
 case 129:
  printed += fprintf(fp, "   ");
  break;
 case 128:
  printed += fprintf(fp, "  ");
  break;
 case 136:
  if (printer_data->hit_nul && ch)
   printer_data->is_printable = 0;

  if (!isprint(ch)) {
   printed += fprintf(fp, "%c", '.');

   if (!printer_data->is_printable)
    break;

   if (ch == '\0')
    printer_data->hit_nul = 1;
   else
    printer_data->is_printable = 0;
  } else {
   printed += fprintf(fp, "%c", ch);
  }
  break;
 case 135:
  printed += fprintf(fp, " ");
  break;
 case 131:
  printed += fprintf(fp, "\n");
  printer_data->line_no++;
  break;
 case 133:
 default:
  break;
 }

 return printed;
}
