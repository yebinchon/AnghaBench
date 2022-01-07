
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arpt_entry {int dummy; } ;



__attribute__((used)) static inline struct arpt_entry *
get_entry(const void *base, unsigned int offset)
{
 return (struct arpt_entry *)(base + offset);
}
