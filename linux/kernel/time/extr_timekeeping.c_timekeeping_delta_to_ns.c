
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tk_read_base {int mult; int xtime_nsec; int shift; } ;


 int arch_gettimeoffset () ;

__attribute__((used)) static inline u64 timekeeping_delta_to_ns(const struct tk_read_base *tkr, u64 delta)
{
 u64 nsec;

 nsec = delta * tkr->mult + tkr->xtime_nsec;
 nsec >>= tkr->shift;


 return nsec + arch_gettimeoffset();
}
