
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int flags; } ;


 int ERESTARTSYS ;
 int KEY_FLAG_USER_CONSTRUCT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int key_read_state (struct key*) ;
 int key_validate (struct key*) ;
 int wait_on_bit (int *,int ,int ) ;

int wait_for_key_construction(struct key *key, bool intr)
{
 int ret;

 ret = wait_on_bit(&key->flags, KEY_FLAG_USER_CONSTRUCT,
     intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
 if (ret)
  return -ERESTARTSYS;
 ret = key_read_state(key);
 if (ret < 0)
  return ret;
 return key_validate(key);
}
