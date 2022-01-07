
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;



__attribute__((used)) static inline bool
icmp6_type_code_match(u_int8_t test_type, u_int8_t min_code, u_int8_t max_code,
       u_int8_t type, u_int8_t code,
       bool invert)
{
 return (type == test_type && code >= min_code && code <= max_code)
  ^ invert;
}
