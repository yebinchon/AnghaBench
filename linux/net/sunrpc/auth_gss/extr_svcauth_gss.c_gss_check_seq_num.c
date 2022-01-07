
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_svc_seq_data {int sd_max; int sd_lock; int sd_win; } ;
struct rsc {struct gss_svc_seq_data seqdata; } ;


 int GSS_SEQ_WIN ;
 int __clear_bit (int,int ) ;
 int __set_bit (int,int ) ;
 scalar_t__ __test_and_set_bit (int,int ) ;
 int memset (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
gss_check_seq_num(struct rsc *rsci, int seq_num)
{
 struct gss_svc_seq_data *sd = &rsci->seqdata;

 spin_lock(&sd->sd_lock);
 if (seq_num > sd->sd_max) {
  if (seq_num >= sd->sd_max + GSS_SEQ_WIN) {
   memset(sd->sd_win,0,sizeof(sd->sd_win));
   sd->sd_max = seq_num;
  } else while (sd->sd_max < seq_num) {
   sd->sd_max++;
   __clear_bit(sd->sd_max % GSS_SEQ_WIN, sd->sd_win);
  }
  __set_bit(seq_num % GSS_SEQ_WIN, sd->sd_win);
  goto ok;
 } else if (seq_num <= sd->sd_max - GSS_SEQ_WIN) {
  goto drop;
 }

 if (__test_and_set_bit(seq_num % GSS_SEQ_WIN, sd->sd_win))
  goto drop;
ok:
 spin_unlock(&sd->sd_lock);
 return 1;
drop:
 spin_unlock(&sd->sd_lock);
 return 0;
}
