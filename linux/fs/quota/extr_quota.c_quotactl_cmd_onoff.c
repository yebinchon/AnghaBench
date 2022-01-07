
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_QUOTAOFF ;
 int Q_QUOTAON ;
 int Q_XQUOTAOFF ;
 int Q_XQUOTAON ;

__attribute__((used)) static bool quotactl_cmd_onoff(int cmd)
{
 return (cmd == Q_QUOTAON) || (cmd == Q_QUOTAOFF) ||
   (cmd == Q_XQUOTAON) || (cmd == Q_XQUOTAOFF);
}
