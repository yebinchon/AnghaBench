
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int * process_keyring; int * thread_keyring; } ;


 int key_put (int *) ;
 struct cred* prepare_creds () ;

struct cred *prepare_exec_creds(void)
{
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return new;
 return new;
}
