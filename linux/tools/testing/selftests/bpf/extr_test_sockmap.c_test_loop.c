
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockmap_options {int base; int sendpage; int data_test; int drop_expected; int iov_count; int iov_length; int rate; scalar_t__ verbose; } ;


 int sched_yield () ;
 int test_exec (int,struct sockmap_options*) ;

__attribute__((used)) static int test_loop(int cgrp)
{
 struct sockmap_options opt;

 int err, i, l, r;

 opt.verbose = 0;
 opt.base = 0;
 opt.sendpage = 0;
 opt.data_test = 0;
 opt.drop_expected = 0;
 opt.iov_count = 0;
 opt.iov_length = 0;
 opt.rate = 0;

 r = 1;
 for (i = 1; i < 100; i += 33) {
  for (l = 1; l < 100; l += 33) {
   opt.rate = r;
   opt.iov_count = i;
   opt.iov_length = l;
   err = test_exec(cgrp, &opt);
   if (err)
    goto out;
  }
 }
 sched_yield();
out:
 return err;
}
