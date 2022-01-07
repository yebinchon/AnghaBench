
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __end_of_region (char) ;
 scalar_t__ end_of_str (char) ;

__attribute__((used)) static inline bool end_of_region(char c)
{
 return __end_of_region(c) || end_of_str(c);
}
