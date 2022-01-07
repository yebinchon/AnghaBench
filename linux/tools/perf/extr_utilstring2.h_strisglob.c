
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strpbrk (char const*,char*) ;

__attribute__((used)) static inline bool strisglob(const char *str)
{
 return strpbrk(str, "*?[") != ((void*)0);
}
