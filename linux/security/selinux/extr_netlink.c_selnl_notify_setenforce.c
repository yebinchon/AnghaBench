
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SELNL_MSG_SETENFORCE ;
 int selnl_notify (int ,int*) ;

void selnl_notify_setenforce(int val)
{
 selnl_notify(SELNL_MSG_SETENFORCE, &val);
}
