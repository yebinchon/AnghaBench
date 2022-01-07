
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 int EXT4_MAX_TRANS_DATA ;
 scalar_t__ ext4_handle_has_enough_credits (int *,int) ;
 int ext4_journal_extend (int *,int ) ;
 int ext4_journal_restart (int *,int ) ;

__attribute__((used)) static int extend_or_restart_transaction(handle_t *handle, int thresh)
{
 int err;

 if (ext4_handle_has_enough_credits(handle, thresh))
  return 0;

 err = ext4_journal_extend(handle, EXT4_MAX_TRANS_DATA);
 if (err < 0)
  return err;
 if (err) {
  err = ext4_journal_restart(handle, EXT4_MAX_TRANS_DATA);
  if (err)
   return err;
 }

 return 0;
}
