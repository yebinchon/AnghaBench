
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_ntp_data {int dummy; } ;


 int AUDIT_NTP_ADJUST ;
 int AUDIT_NTP_FREQ ;
 int AUDIT_NTP_OFFSET ;
 int AUDIT_NTP_STATUS ;
 int AUDIT_NTP_TAI ;
 int AUDIT_NTP_TICK ;
 int audit_log_ntp_val (struct audit_ntp_data const*,char*,int ) ;

void __audit_ntp_log(const struct audit_ntp_data *ad)
{
 audit_log_ntp_val(ad, "offset", AUDIT_NTP_OFFSET);
 audit_log_ntp_val(ad, "freq", AUDIT_NTP_FREQ);
 audit_log_ntp_val(ad, "status", AUDIT_NTP_STATUS);
 audit_log_ntp_val(ad, "tai", AUDIT_NTP_TAI);
 audit_log_ntp_val(ad, "tick", AUDIT_NTP_TICK);
 audit_log_ntp_val(ad, "adjust", AUDIT_NTP_ADJUST);
}
