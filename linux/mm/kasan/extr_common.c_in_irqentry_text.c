
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __irqentry_text_end ;
 int __irqentry_text_start ;
 int __softirqentry_text_end ;
 int __softirqentry_text_start ;

__attribute__((used)) static inline int in_irqentry_text(unsigned long ptr)
{
 return (ptr >= (unsigned long)&__irqentry_text_start &&
  ptr < (unsigned long)&__irqentry_text_end) ||
  (ptr >= (unsigned long)&__softirqentry_text_start &&
   ptr < (unsigned long)&__softirqentry_text_end);
}
