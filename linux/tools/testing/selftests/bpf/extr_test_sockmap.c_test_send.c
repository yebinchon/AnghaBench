
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockmap_options {int iov_length; int iov_count; int rate; } ;


 int sched_yield () ;
 int test_exec (int,struct sockmap_options*) ;

__attribute__((used)) static int test_send(struct sockmap_options *opt, int cgrp)
{
 int err;

 opt->iov_length = 1;
 opt->iov_count = 1;
 opt->rate = 1;
 err = test_exec(cgrp, opt);
 if (err)
  goto out;

 opt->iov_length = 1;
 opt->iov_count = 1024;
 opt->rate = 1;
 err = test_exec(cgrp, opt);
 if (err)
  goto out;

 opt->iov_length = 1024;
 opt->iov_count = 1;
 opt->rate = 1;
 err = test_exec(cgrp, opt);
 if (err)
  goto out;

 opt->iov_length = 1;
 opt->iov_count = 1;
 opt->rate = 512;
 err = test_exec(cgrp, opt);
 if (err)
  goto out;

 opt->iov_length = 256;
 opt->iov_count = 1024;
 opt->rate = 2;
 err = test_exec(cgrp, opt);
 if (err)
  goto out;

 opt->rate = 100;
 opt->iov_count = 1;
 opt->iov_length = 5;
 err = test_exec(cgrp, opt);
 if (err)
  goto out;
out:
 sched_yield();
 return err;
}
