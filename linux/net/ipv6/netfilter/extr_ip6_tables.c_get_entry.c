
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6t_entry {int dummy; } ;



__attribute__((used)) static inline struct ip6t_entry *
get_entry(const void *base, unsigned int offset)
{
 return (struct ip6t_entry *)(base + offset);
}
