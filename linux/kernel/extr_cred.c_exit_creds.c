
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_1__* cred; int * real_cred; int pid; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {int * cached_requested_key; } ;
struct TYPE_4__ {int usage; } ;


 int alter_cred_subscribers (struct cred*,int) ;
 int atomic_read (int *) ;
 TYPE_3__* current ;
 int kdebug (char*,int ,int *,TYPE_1__*,int ,int ) ;
 int key_put (int *) ;
 int put_cred (struct cred*) ;
 int read_cred_subscribers (TYPE_1__*) ;
 int validate_creds (struct cred*) ;

void exit_creds(struct task_struct *tsk)
{
 struct cred *cred;

 kdebug("exit_creds(%u,%p,%p,{%d,%d})", tsk->pid, tsk->real_cred, tsk->cred,
        atomic_read(&tsk->cred->usage),
        read_cred_subscribers(tsk->cred));

 cred = (struct cred *) tsk->real_cred;
 tsk->real_cred = ((void*)0);
 validate_creds(cred);
 alter_cred_subscribers(cred, -1);
 put_cred(cred);

 cred = (struct cred *) tsk->cred;
 tsk->cred = ((void*)0);
 validate_creds(cred);
 alter_cred_subscribers(cred, -1);
 put_cred(cred);





}
