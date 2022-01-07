
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk_deferred (char*,int,char const*) ;

__attribute__((used)) static inline void printk_safe_flush_line(const char *text, int len)
{






 printk_deferred("%.*s", len, text);
}
