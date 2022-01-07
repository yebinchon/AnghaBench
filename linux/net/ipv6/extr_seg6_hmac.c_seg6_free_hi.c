
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_hmac_info {int dummy; } ;


 int seg6_hinfo_release (struct seg6_hmac_info*) ;

__attribute__((used)) static void seg6_free_hi(void *ptr, void *arg)
{
 struct seg6_hmac_info *hinfo = (struct seg6_hmac_info *)ptr;

 if (hinfo)
  seg6_hinfo_release(hinfo);
}
