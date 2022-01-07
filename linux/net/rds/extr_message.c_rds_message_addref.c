
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_message {int m_refcount; } ;


 int rdsdebug (char*,struct rds_message*,int ) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;

void rds_message_addref(struct rds_message *rm)
{
 rdsdebug("addref rm %p ref %d\n", rm, refcount_read(&rm->m_refcount));
 refcount_inc(&rm->m_refcount);
}
