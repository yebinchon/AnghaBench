
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;


 int CAP_MAC_OVERRIDE ;
 int EACCES ;
 scalar_t__ smack_privileged (int ) ;
 struct smack_known* smack_syslog_label ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static int smack_syslog(int typefrom_file)
{
 int rc = 0;
 struct smack_known *skp = smk_of_current();

 if (smack_privileged(CAP_MAC_OVERRIDE))
  return 0;

 if (smack_syslog_label != ((void*)0) && smack_syslog_label != skp)
  rc = -EACCES;

 return rc;
}
