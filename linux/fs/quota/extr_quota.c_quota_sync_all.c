
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int MAXQUOTAS ;
 int Q_SYNC ;
 int iterate_supers (int ,int*) ;
 int quota_sync_one ;
 int security_quotactl (int ,int,int ,int *) ;

__attribute__((used)) static int quota_sync_all(int type)
{
 int ret;

 if (type >= MAXQUOTAS)
  return -EINVAL;
 ret = security_quotactl(Q_SYNC, type, 0, ((void*)0));
 if (!ret)
  iterate_supers(quota_sync_one, &type);
 return ret;
}
