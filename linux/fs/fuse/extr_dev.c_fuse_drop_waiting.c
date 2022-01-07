
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int blocked_waitq; int connected; int num_waiting; } ;


 int READ_ONCE (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void fuse_drop_waiting(struct fuse_conn *fc)
{





 if (atomic_dec_and_test(&fc->num_waiting) &&
     !READ_ONCE(fc->connected)) {

  wake_up_all(&fc->blocked_waitq);
 }
}
