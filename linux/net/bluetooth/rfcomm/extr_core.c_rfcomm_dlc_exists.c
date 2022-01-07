
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
typedef int bdaddr_t ;


 int EINVAL ;
 struct rfcomm_dlc* ERR_PTR (int ) ;
 int __dlci (int ,int ) ;
 int __session_dir (struct rfcomm_session*) ;
 scalar_t__ rfcomm_check_channel (int ) ;
 struct rfcomm_dlc* rfcomm_dlc_get (struct rfcomm_session*,int ) ;
 int rfcomm_lock () ;
 struct rfcomm_session* rfcomm_session_get (int *,int *) ;
 int rfcomm_unlock () ;

struct rfcomm_dlc *rfcomm_dlc_exists(bdaddr_t *src, bdaddr_t *dst, u8 channel)
{
 struct rfcomm_session *s;
 struct rfcomm_dlc *dlc = ((void*)0);
 u8 dlci;

 if (rfcomm_check_channel(channel))
  return ERR_PTR(-EINVAL);

 rfcomm_lock();
 s = rfcomm_session_get(src, dst);
 if (s) {
  dlci = __dlci(__session_dir(s), channel);
  dlc = rfcomm_dlc_get(s, dlci);
 }
 rfcomm_unlock();
 return dlc;
}
