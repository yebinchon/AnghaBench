
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_incoming {int i_refcount; } ;


 int rdsdebug (char*,struct rds_incoming*,int ) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;

__attribute__((used)) static void rds_inc_addref(struct rds_incoming *inc)
{
 rdsdebug("addref inc %p ref %d\n", inc, refcount_read(&inc->i_refcount));
 refcount_inc(&inc->i_refcount);
}
