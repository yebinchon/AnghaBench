
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct journal_head {char* b_committed_data; } ;
struct buffer_head {int b_size; int b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int b_size; } ;


 int GFP_NOFS ;
 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int __GFP_NOFAIL ;
 int do_get_write_access (int *,struct journal_head*,int) ;
 char* jbd2_alloc (int ,int) ;
 int jbd2_free (char*,int ) ;
 struct journal_head* jbd2_journal_add_journal_head (struct buffer_head*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;
 scalar_t__ jbd2_write_access_granted (int *,struct buffer_head*,int) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;
 TYPE_1__* jh2bh (struct journal_head*) ;
 int memcpy (char*,int ,int ) ;
 scalar_t__ unlikely (char*) ;

int jbd2_journal_get_undo_access(handle_t *handle, struct buffer_head *bh)
{
 int err;
 struct journal_head *jh;
 char *committed_data = ((void*)0);

 if (jbd2_write_access_granted(handle, bh, 1))
  return 0;

 jh = jbd2_journal_add_journal_head(bh);
 JBUFFER_TRACE(jh, "entry");






 err = do_get_write_access(handle, jh, 1);
 if (err)
  goto out;

repeat:
 if (!jh->b_committed_data)
  committed_data = jbd2_alloc(jh2bh(jh)->b_size,
         GFP_NOFS|__GFP_NOFAIL);

 jbd_lock_bh_state(bh);
 if (!jh->b_committed_data) {


  JBUFFER_TRACE(jh, "generate b_committed data");
  if (!committed_data) {
   jbd_unlock_bh_state(bh);
   goto repeat;
  }

  jh->b_committed_data = committed_data;
  committed_data = ((void*)0);
  memcpy(jh->b_committed_data, bh->b_data, bh->b_size);
 }
 jbd_unlock_bh_state(bh);
out:
 jbd2_journal_put_journal_head(jh);
 if (unlikely(committed_data))
  jbd2_free(committed_data, bh->b_size);
 return err;
}
