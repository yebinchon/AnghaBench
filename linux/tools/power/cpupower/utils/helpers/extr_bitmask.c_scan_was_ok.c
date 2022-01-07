
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;

__attribute__((used)) static int scan_was_ok(int sret, char nextc, const char *ok_next_chars)
{
 return sret == 1 ||
  (sret == 2 && strchr(ok_next_chars, nextc) != ((void*)0));
}
