
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_bebob {scalar_t__ substreams_counter; int out_conn; int rx_stream; int tx_stream; TYPE_3__* unit; TYPE_2__* spec; int in_conn; int domain; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {TYPE_1__* rate; } ;
struct TYPE_4__ {int (* get ) (struct snd_bebob*,unsigned int*) ;int (* set ) (struct snd_bebob*,unsigned int) ;} ;


 int amdtp_domain_stop (int *) ;
 int break_both_connections (struct snd_bebob*) ;
 int check_connection_used_by_others (struct snd_bebob*,int *) ;
 int cmp_connection_release (int *) ;
 int dev_err (int *,char*,int) ;
 int get_formation_index (unsigned int,unsigned int*) ;
 int keep_resources (struct snd_bebob*,int *,unsigned int,unsigned int) ;
 int stub1 (struct snd_bebob*,unsigned int*) ;
 int stub2 (struct snd_bebob*,unsigned int) ;

int snd_bebob_stream_reserve_duplex(struct snd_bebob *bebob, unsigned int rate)
{
 unsigned int curr_rate;
 int err;



 err = check_connection_used_by_others(bebob, &bebob->rx_stream);
 if (err < 0)
  return err;

 err = bebob->spec->rate->get(bebob, &curr_rate);
 if (err < 0)
  return err;
 if (rate == 0)
  rate = curr_rate;
 if (curr_rate != rate) {
  amdtp_domain_stop(&bebob->domain);
  break_both_connections(bebob);

  cmp_connection_release(&bebob->out_conn);
  cmp_connection_release(&bebob->in_conn);
 }

 if (bebob->substreams_counter == 0 || curr_rate != rate) {
  unsigned int index;






  err = bebob->spec->rate->set(bebob, rate);
  if (err < 0) {
   dev_err(&bebob->unit->device,
    "fail to set sampling rate: %d\n",
    err);
   return err;
  }

  err = get_formation_index(rate, &index);
  if (err < 0)
   return err;

  err = keep_resources(bebob, &bebob->tx_stream, rate, index);
  if (err < 0)
   return err;

  err = keep_resources(bebob, &bebob->rx_stream, rate, index);
  if (err < 0) {
   cmp_connection_release(&bebob->out_conn);
   return err;
  }
 }

 return 0;
}
