
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddebug_query {char* format; char* function; char* filename; char* module; int last_lineno; int first_lineno; } ;


 int strlen (char*) ;
 int vpr_info (char*,char const*,char*,char*,char*,int,char*,int ,int ) ;

__attribute__((used)) static void vpr_info_dq(const struct ddebug_query *query, const char *msg)
{

 int fmtlen = 0;

 if (query->format) {
  fmtlen = strlen(query->format);
  while (fmtlen && query->format[fmtlen - 1] == '\n')
   fmtlen--;
 }

 vpr_info("%s: func=\"%s\" file=\"%s\" module=\"%s\" format=\"%.*s\" lineno=%u-%u\n",
   msg,
   query->function ? query->function : "",
   query->filename ? query->filename : "",
   query->module ? query->module : "",
   fmtlen, query->format ? query->format : "",
   query->first_lineno, query->last_lineno);
}
