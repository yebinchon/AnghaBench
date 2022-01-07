
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_callback {int (* done ) (struct netlink_callback*) ;} ;


 int fib6_dump_end (struct netlink_callback*) ;
 int stub1 (struct netlink_callback*) ;

__attribute__((used)) static int fib6_dump_done(struct netlink_callback *cb)
{
 fib6_dump_end(cb);
 return cb->done ? cb->done(cb) : 0;
}
