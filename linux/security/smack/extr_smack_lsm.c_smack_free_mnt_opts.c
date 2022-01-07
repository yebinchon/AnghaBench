
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_mnt_opts {struct smack_mnt_opts* fstransmute; struct smack_mnt_opts* fsroot; struct smack_mnt_opts* fshat; struct smack_mnt_opts* fsfloor; struct smack_mnt_opts* fsdefault; } ;


 int kfree (struct smack_mnt_opts*) ;

__attribute__((used)) static void smack_free_mnt_opts(void *mnt_opts)
{
 struct smack_mnt_opts *opts = mnt_opts;
 kfree(opts->fsdefault);
 kfree(opts->fsfloor);
 kfree(opts->fshat);
 kfree(opts->fsroot);
 kfree(opts->fstransmute);
 kfree(opts);
}
