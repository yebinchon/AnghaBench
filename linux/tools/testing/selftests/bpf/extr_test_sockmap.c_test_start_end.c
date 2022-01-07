
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockmap_options {int rate; int iov_count; int iov_length; int member_0; } ;


 int sched_yield () ;
 int test_exec (int,struct sockmap_options*) ;
 int test_txmsg (int) ;
 int txmsg_cork ;
 int txmsg_end ;
 int txmsg_end_push ;
 int txmsg_pop ;
 int txmsg_start ;
 int txmsg_start_pop ;
 int txmsg_start_push ;

__attribute__((used)) static int test_start_end(int cgrp)
{
 struct sockmap_options opt = {0};
 int err, i;


 txmsg_start = 1;
 txmsg_end = 2;
 txmsg_start_push = 1;
 txmsg_end_push = 2;
 txmsg_start_pop = 1;
 txmsg_pop = 1;
 err = test_txmsg(cgrp);
 if (err)
  goto out;


 txmsg_start = 1;
 txmsg_end = 2;
 txmsg_start_push = 1;
 txmsg_end_push = 3;
 txmsg_start_pop = 1;
 txmsg_pop = 1;
 err = test_txmsg(cgrp);
 if (err)
  goto out;


 opt.rate = 16;
 opt.iov_count = 1;
 opt.iov_length = 100;
 txmsg_cork = 1600;

 txmsg_start_pop = 0;
 txmsg_pop = 0;

 for (i = 99; i <= 1600; i += 500) {
  txmsg_start = 0;
  txmsg_end = i;
  txmsg_start_push = 0;
  txmsg_end_push = i;
  err = test_exec(cgrp, &opt);
  if (err)
   goto out;
 }


 for (i = 99; i <= 1600; i += 500) {
  txmsg_start_pop = 10;
  txmsg_pop = i;
  err = test_exec(cgrp, &opt);
  if (err)
   goto out;
 }
 txmsg_start_pop = 0;
 txmsg_pop = 0;


 for (i = 199; i <= 1600; i += 500) {
  txmsg_start = 100;
  txmsg_end = i;
  txmsg_start_push = 100;
  txmsg_end_push = i;
  err = test_exec(cgrp, &opt);
  if (err)
   goto out;
 }


 txmsg_start = 1500;
 txmsg_end = 1600;
 txmsg_start_push = 1500;
 txmsg_end_push = 1600;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start_pop = 1500;
 txmsg_pop = 1600;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;
 txmsg_start_pop = 0;
 txmsg_pop = 0;


 txmsg_start = 1111;
 txmsg_end = 1112;
 txmsg_start_push = 1111;
 txmsg_end_push = 1112;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start_pop = 1111;
 txmsg_pop = 1112;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start = 1111;
 txmsg_end = 0;
 txmsg_start_push = 1111;
 txmsg_end_push = 0;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start = 0;
 txmsg_end = 1601;
 txmsg_start_push = 0;
 txmsg_end_push = 1601;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start = 1601;
 txmsg_end = 1600;
 txmsg_start_push = 1601;
 txmsg_end_push = 1600;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start_pop = 1601;
 txmsg_pop = 1;
 err = test_exec(cgrp, &opt);
 if (err)
  goto out;


 txmsg_start_pop = 1599;
 txmsg_pop = 10;
 err = test_exec(cgrp, &opt);
out:
 txmsg_start = 0;
 txmsg_end = 0;
 sched_yield();
 return err;
}
