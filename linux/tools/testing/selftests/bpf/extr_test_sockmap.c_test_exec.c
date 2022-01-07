
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockmap_options {int dummy; } ;


 int SENDMSG ;
 int SENDPAGE ;
 int __test_exec (int,int ,struct sockmap_options*) ;

__attribute__((used)) static int test_exec(int cgrp, struct sockmap_options *opt)
{
 int err = __test_exec(cgrp, SENDMSG, opt);

 if (err)
  goto out;

 err = __test_exec(cgrp, SENDPAGE, opt);
out:
 return err;
}
