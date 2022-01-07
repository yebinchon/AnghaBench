
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int EINVAL ;
 int power_of_ten (unsigned int) ;
 int sscanf (char const*,char*,int*,int*,int*,int*) ;

int cgroup_parse_float(const char *input, unsigned dec_shift, s64 *v)
{
 s64 whole, frac = 0;
 int fstart = 0, fend = 0, flen;

 if (!sscanf(input, "%lld.%n%lld%n", &whole, &fstart, &frac, &fend))
  return -EINVAL;
 if (frac < 0)
  return -EINVAL;

 flen = fend > fstart ? fend - fstart : 0;
 if (flen < dec_shift)
  frac *= power_of_ten(dec_shift - flen);
 else
  frac = DIV_ROUND_CLOSEST_ULL(frac, power_of_ten(flen - dec_shift));

 *v = whole * power_of_ten(dec_shift) + frac;
 return 0;
}
