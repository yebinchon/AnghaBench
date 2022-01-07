
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int strnlen (char const*,unsigned int) ;

__attribute__((used)) static bool error_tg_ok(unsigned int usersize, unsigned int kernsize,
   const char *msg, unsigned int msglen)
{
 return usersize == kernsize && strnlen(msg, msglen) < msglen;
}
