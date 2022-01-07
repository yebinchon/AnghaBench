
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int out_conn; int in_conn; } ;


 int cmp_connection_break (int *) ;
 int cmp_connection_establish (int *) ;

__attribute__((used)) static int make_both_connections(struct snd_bebob *bebob)
{
 int err = 0;

 err = cmp_connection_establish(&bebob->out_conn);
 if (err < 0)
  return err;

 err = cmp_connection_establish(&bebob->in_conn);
 if (err < 0) {
  cmp_connection_break(&bebob->out_conn);
  return err;
 }

 return 0;
}
