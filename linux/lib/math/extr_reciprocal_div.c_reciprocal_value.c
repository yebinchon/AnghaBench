
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct reciprocal_value {int m; int sh2; int sh1; } ;


 int do_div (unsigned long long,int) ;
 int fls (int) ;
 int max (int,int ) ;
 int min (int,int) ;

struct reciprocal_value reciprocal_value(u32 d)
{
 struct reciprocal_value R;
 u64 m;
 int l;

 l = fls(d - 1);
 m = ((1ULL << 32) * ((1ULL << l) - d));
 do_div(m, d);
 ++m;
 R.m = (u32)m;
 R.sh1 = min(l, 1);
 R.sh2 = max(l - 1, 0);

 return R;
}
