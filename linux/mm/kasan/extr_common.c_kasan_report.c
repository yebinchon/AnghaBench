
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __kasan_report (unsigned long,size_t,int,unsigned long) ;
 int user_access_restore (unsigned long) ;
 unsigned long user_access_save () ;

void kasan_report(unsigned long addr, size_t size, bool is_write, unsigned long ip)
{
 unsigned long flags = user_access_save();
 __kasan_report(addr, size, is_write, ip);
 user_access_restore(flags);
}
