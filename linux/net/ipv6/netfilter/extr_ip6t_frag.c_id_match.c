
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 int pr_debug (char*,...) ;

__attribute__((used)) static inline bool
id_match(u_int32_t min, u_int32_t max, u_int32_t id, bool invert)
{
 bool r;
 pr_debug("id_match:%c 0x%x <= 0x%x <= 0x%x\n", invert ? '!' : ' ',
   min, id, max);
 r = (id >= min && id <= max) ^ invert;
 pr_debug(" result %s\n", r ? "PASS" : "FAILED");
 return r;
}
