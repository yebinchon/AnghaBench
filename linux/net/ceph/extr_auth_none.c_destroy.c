
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_auth_client {int * private; } ;


 int kfree (int *) ;

__attribute__((used)) static void destroy(struct ceph_auth_client *ac)
{
 kfree(ac->private);
 ac->private = ((void*)0);
}
