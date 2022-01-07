
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int LOGLEVEL_DEFAULT ;
 int PRINTK_NMI_CONTEXT_MASK ;
 int PRINTK_NMI_DIRECT_CONTEXT_MASK ;
 int PRINTK_SAFE_CONTEXT_MASK ;
 int defer_console_output () ;
 int logbuf_lock ;
 int printk_context ;
 scalar_t__ raw_spin_trylock (int *) ;
 int raw_spin_unlock (int *) ;
 int this_cpu_read (int ) ;
 int vprintk_default (char const*,int ) ;
 int vprintk_nmi (char const*,int ) ;
 int vprintk_safe (char const*,int ) ;
 int vprintk_store (int ,int ,int *,int ,char const*,int ) ;

int vprintk_func(const char *fmt, va_list args)
{




 if ((this_cpu_read(printk_context) & PRINTK_NMI_DIRECT_CONTEXT_MASK) &&
     raw_spin_trylock(&logbuf_lock)) {
  int len;

  len = vprintk_store(0, LOGLEVEL_DEFAULT, ((void*)0), 0, fmt, args);
  raw_spin_unlock(&logbuf_lock);
  defer_console_output();
  return len;
 }


 if (this_cpu_read(printk_context) & PRINTK_NMI_CONTEXT_MASK)
  return vprintk_nmi(fmt, args);


 if (this_cpu_read(printk_context) & PRINTK_SAFE_CONTEXT_MASK)
  return vprintk_safe(fmt, args);


 return vprintk_default(fmt, args);
}
