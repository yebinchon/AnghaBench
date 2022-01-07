
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct journal_head {scalar_t__ b_transaction; scalar_t__ b_next_transaction; struct buffer_head* b_bh; int b_committed_data; } ;
struct buffer_head {int b_private; } ;
struct TYPE_3__ {scalar_t__ h_transaction; } ;
typedef TYPE_1__ handle_t ;


 struct journal_head* READ_ONCE (int ) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_jbd (struct buffer_head*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool jbd2_write_access_granted(handle_t *handle, struct buffer_head *bh,
       bool undo)
{
 struct journal_head *jh;
 bool ret = 0;


 if (buffer_dirty(bh))
  return 0;
 rcu_read_lock();
 if (!buffer_jbd(bh))
  goto out;

 jh = READ_ONCE(bh->b_private);
 if (!jh)
  goto out;

 if (undo && !jh->b_committed_data)
  goto out;
 if (jh->b_transaction != handle->h_transaction &&
     jh->b_next_transaction != handle->h_transaction)
  goto out;
 smp_mb();
 if (unlikely(jh->b_bh != bh))
  goto out;
 ret = 1;
out:
 rcu_read_unlock();
 return ret;
}
