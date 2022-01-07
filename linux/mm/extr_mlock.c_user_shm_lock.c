
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {unsigned long locked_shm; } ;


 int CAP_IPC_LOCK ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int RLIMIT_MEMLOCK ;
 unsigned long RLIM_INFINITY ;
 int capable (int ) ;
 int get_uid (struct user_struct*) ;
 unsigned long rlimit (int ) ;
 int shmlock_user_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int user_shm_lock(size_t size, struct user_struct *user)
{
 unsigned long lock_limit, locked;
 int allowed = 0;

 locked = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 lock_limit = rlimit(RLIMIT_MEMLOCK);
 if (lock_limit == RLIM_INFINITY)
  allowed = 1;
 lock_limit >>= PAGE_SHIFT;
 spin_lock(&shmlock_user_lock);
 if (!allowed &&
     locked + user->locked_shm > lock_limit && !capable(CAP_IPC_LOCK))
  goto out;
 get_uid(user);
 user->locked_shm += locked;
 allowed = 1;
out:
 spin_unlock(&shmlock_user_lock);
 return allowed;
}
