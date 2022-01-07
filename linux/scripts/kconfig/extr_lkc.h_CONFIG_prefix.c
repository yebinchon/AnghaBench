
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* CONFIG_ ;
 scalar_t__ getenv (char*) ;

__attribute__((used)) static inline const char *CONFIG_prefix(void)
{
 return getenv( "CONFIG_" ) ?: CONFIG_;
}
