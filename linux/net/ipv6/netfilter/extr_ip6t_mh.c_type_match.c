
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;



__attribute__((used)) static inline bool
type_match(u_int8_t min, u_int8_t max, u_int8_t type, bool invert)
{
 return (type >= min && type <= max) ^ invert;
}
