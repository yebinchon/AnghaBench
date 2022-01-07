
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_mnt_opts {struct selinux_mnt_opts* defcontext; struct selinux_mnt_opts* rootcontext; struct selinux_mnt_opts* context; struct selinux_mnt_opts* fscontext; } ;


 int kfree (struct selinux_mnt_opts*) ;

__attribute__((used)) static void selinux_free_mnt_opts(void *mnt_opts)
{
 struct selinux_mnt_opts *opts = mnt_opts;
 kfree(opts->fscontext);
 kfree(opts->context);
 kfree(opts->rootcontext);
 kfree(opts->defcontext);
 kfree(opts);
}
