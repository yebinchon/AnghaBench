
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;


 double first_time ;
 double last_time ;
 double svg_page_width ;

__attribute__((used)) static double time2pixels(u64 __time)
{
 double X;

 X = 1.0 * svg_page_width * (__time - first_time) / (last_time - first_time);
 return X;
}
