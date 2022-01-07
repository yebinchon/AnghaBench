
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_FANOTIFY ;
 int GFP_KERNEL ;
 int audit_context () ;
 int audit_log (int ,int ,int ,char*,unsigned int) ;

void __audit_fanotify(unsigned int response)
{
 audit_log(audit_context(), GFP_KERNEL,
  AUDIT_FANOTIFY, "resp=%u", response);
}
