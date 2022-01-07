
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int dummy; } ;
typedef int loff_t ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int ima_read_modsig(enum ima_hooks func, const void *buf,
      loff_t buf_len, struct modsig **modsig)
{
 return -EOPNOTSUPP;
}
