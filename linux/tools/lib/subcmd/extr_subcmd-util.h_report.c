
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int msg ;


 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static inline void report(const char *prefix, const char *err, va_list params)
{
 char msg[1024];
 vsnprintf(msg, sizeof(msg), err, params);
 fprintf(stderr, " %s%s\n", prefix, msg);
}
