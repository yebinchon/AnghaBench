
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct dccp_hdr {int dccph_type; } ;



__attribute__((used)) static inline bool
match_types(const struct dccp_hdr *dh, u_int16_t typemask)
{
 return typemask & (1 << dh->dccph_type);
}
