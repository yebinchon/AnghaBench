
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; int line; } ;
struct disasm_line {TYPE_1__ al; } ;
typedef scalar_t__ s64 ;


 int g_free (char*) ;
 char* g_markup_escape_text (int ,int) ;
 scalar_t__ scnprintf (char*,size_t,char*,...) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int perf_gtk__get_line(char *buf, size_t size, struct disasm_line *dl)
{
 int ret = 0;
 char *line = g_markup_escape_text(dl->al.line, -1);
 const char *markup = "<span fgcolor='gray'>";

 strcpy(buf, "");

 if (!line)
  return 0;

 if (dl->al.offset != (s64) -1)
  markup = ((void*)0);

 if (markup)
  ret += scnprintf(buf, size, "%s", markup);
 ret += scnprintf(buf + ret, size - ret, "%s", line);
 if (markup)
  ret += scnprintf(buf + ret, size - ret, "</span>");

 g_free(line);
 return ret;
}
