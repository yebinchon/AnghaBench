
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int dummy; } ;


 int record_opts__config_freq (struct record_opts*) ;

int record_opts__config(struct record_opts *opts)
{
 return record_opts__config_freq(opts);
}
