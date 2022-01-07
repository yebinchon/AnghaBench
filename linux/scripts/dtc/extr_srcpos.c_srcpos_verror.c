
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct srcpos {int dummy; } ;


 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* srcpos_string (struct srcpos*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

void srcpos_verror(struct srcpos *pos, const char *prefix,
     const char *fmt, va_list va)
{
 char *srcstr;

 srcstr = srcpos_string(pos);

 fprintf(stderr, "%s: %s ", prefix, srcstr);
 vfprintf(stderr, fmt, va);
 fprintf(stderr, "\n");

 free(srcstr);
}
