
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef unsigned int secno ;


 int EINTR ;
 int GFP_NOFS ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int sb_issue_discard (struct super_block*,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static int do_trim(struct super_block *s, secno start, unsigned len, secno limit_start, secno limit_end, unsigned minlen, unsigned *result)
{
 int err;
 secno end;
 if (fatal_signal_pending(current))
  return -EINTR;
 end = start + len;
 if (start < limit_start)
  start = limit_start;
 if (end > limit_end)
  end = limit_end;
 if (start >= end)
  return 0;
 if (end - start < minlen)
  return 0;
 err = sb_issue_discard(s, start, end - start, GFP_NOFS, 0);
 if (err)
  return err;
 *result += end - start;
 return 0;
}
