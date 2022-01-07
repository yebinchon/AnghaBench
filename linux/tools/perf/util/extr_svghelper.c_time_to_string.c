
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;


 double NSEC_PER_MSEC ;
 double NSEC_PER_USEC ;
 int sprintf (char*,char*,double) ;

__attribute__((used)) static char *time_to_string(u64 duration)
{
 static char text[80];

 text[0] = 0;

 if (duration < NSEC_PER_USEC)
  return text;

 if (duration < NSEC_PER_MSEC) {
  sprintf(text, "%.1f us", duration / (double)NSEC_PER_USEC);
  return text;
 }
 sprintf(text, "%.1f ms", duration / (double)NSEC_PER_MSEC);

 return text;
}
