
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct trace_seq {int dummy; } ;


 scalar_t__ le16toh (int ) ;

__attribute__((used)) static unsigned long long
process___le16_to_cpup(struct trace_seq *s, unsigned long long *args)
{
 uint16_t *val = (uint16_t *) (unsigned long) args[0];
 return val ? (long long) le16toh(*val) : 0;
}
