
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;


 int EIO ;


 int hidp_get_raw_report (struct hid_device*,unsigned char,int *,size_t,unsigned char) ;
 int hidp_set_raw_report (struct hid_device*,unsigned char,int *,size_t,unsigned char) ;

__attribute__((used)) static int hidp_raw_request(struct hid_device *hid, unsigned char reportnum,
       __u8 *buf, size_t len, unsigned char rtype,
       int reqtype)
{
 switch (reqtype) {
 case 129:
  return hidp_get_raw_report(hid, reportnum, buf, len, rtype);
 case 128:
  return hidp_set_raw_report(hid, reportnum, buf, len, rtype);
 default:
  return -EIO;
 }
}
