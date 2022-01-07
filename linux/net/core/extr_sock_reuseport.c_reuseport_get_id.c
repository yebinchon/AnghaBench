
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {int reuseport_id; } ;


 int GFP_ATOMIC ;
 int REUSEPORT_MIN_ID ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int reuseport_ida ;

int reuseport_get_id(struct sock_reuseport *reuse)
{
 int id;

 if (reuse->reuseport_id)
  return reuse->reuseport_id;

 id = ida_simple_get(&reuseport_ida, REUSEPORT_MIN_ID, 0,

       GFP_ATOMIC);
 if (id < 0)
  return id;

 reuse->reuseport_id = id;

 return reuse->reuseport_id;
}
