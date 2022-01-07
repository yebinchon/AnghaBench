
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PERF_COLOR_BLUE ;
 int color_fprintf (int ,char const*,char*,char const*) ;
 int fflush (int ) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static void cs_etm__packet_dump(const char *pkt_string)
{
 const char *color = PERF_COLOR_BLUE;
 int len = strlen(pkt_string);

 if (len && (pkt_string[len-1] == '\n'))
  color_fprintf(stdout, color, "	%s", pkt_string);
 else
  color_fprintf(stdout, color, "	%s\n", pkt_string);

 fflush(stdout);
}
