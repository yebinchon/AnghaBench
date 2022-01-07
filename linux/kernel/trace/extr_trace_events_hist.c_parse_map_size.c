
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long TRACING_MAP_BITS_MAX ;
 unsigned long TRACING_MAP_BITS_MIN ;
 unsigned long ilog2 (int ) ;
 int kstrtoul (char*,int ,unsigned long*) ;
 int roundup_pow_of_two (unsigned long) ;
 int strsep (char**,char*) ;

__attribute__((used)) static int parse_map_size(char *str)
{
 unsigned long size, map_bits;
 int ret;

 strsep(&str, "=");
 if (!str) {
  ret = -EINVAL;
  goto out;
 }

 ret = kstrtoul(str, 0, &size);
 if (ret)
  goto out;

 map_bits = ilog2(roundup_pow_of_two(size));
 if (map_bits < TRACING_MAP_BITS_MIN ||
     map_bits > TRACING_MAP_BITS_MAX)
  ret = -EINVAL;
 else
  ret = map_bits;
 out:
 return ret;
}
