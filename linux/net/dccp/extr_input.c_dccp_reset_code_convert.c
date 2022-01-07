
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int const u16 ;


 size_t const DCCP_MAX_RESET_CODES ;
__attribute__((used)) static u16 dccp_reset_code_convert(const u8 code)
{
 static const u16 error_code[] = {
 [144] = 0,
 [137] = 0,
 [148] = 133,

 [141] = 134,
 [143] = 134,
 [138] = 128,
 [147] = 132,

 [139] = 130,
 [146] = 136,
 [145] = 135,
 [140] = 131,
 [142] = 129,
 };

 return code >= DCCP_MAX_RESET_CODES ? 0 : error_code[code];
}
