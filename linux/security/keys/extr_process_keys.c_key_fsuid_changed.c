
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {TYPE_1__* thread_keyring; int fsuid; } ;
struct TYPE_2__ {int sem; int uid; } ;


 int down_write (int *) ;
 int up_write (int *) ;

void key_fsuid_changed(struct cred *new_cred)
{

 if (new_cred->thread_keyring) {
  down_write(&new_cred->thread_keyring->sem);
  new_cred->thread_keyring->uid = new_cred->fsuid;
  up_write(&new_cred->thread_keyring->sem);
 }
}
