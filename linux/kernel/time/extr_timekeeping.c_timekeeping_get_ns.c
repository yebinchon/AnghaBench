
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tk_read_base {int dummy; } ;


 int timekeeping_delta_to_ns (struct tk_read_base const*,int ) ;
 int timekeeping_get_delta (struct tk_read_base const*) ;

__attribute__((used)) static inline u64 timekeeping_get_ns(const struct tk_read_base *tkr)
{
 u64 delta;

 delta = timekeeping_get_delta(tkr);
 return timekeeping_delta_to_ns(tkr, delta);
}
