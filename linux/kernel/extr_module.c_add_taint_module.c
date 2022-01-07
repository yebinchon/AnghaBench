
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int taints; } ;
typedef enum lockdep_ok { ____Placeholder_lockdep_ok } lockdep_ok ;


 int add_taint (unsigned int,int) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static inline void add_taint_module(struct module *mod, unsigned flag,
        enum lockdep_ok lockdep_ok)
{
 add_taint(flag, lockdep_ok);
 set_bit(flag, &mod->taints);
}
