
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmtp_session {int flags; int num; int state; int bdaddr; } ;
struct cmtp_conninfo {int flags; int num; int state; int bdaddr; } ;


 int BIT (int ) ;
 int CMTP_LOOPBACK ;
 int bacpy (int *,int *) ;
 int memset (struct cmtp_conninfo*,int ,int) ;

__attribute__((used)) static void __cmtp_copy_session(struct cmtp_session *session, struct cmtp_conninfo *ci)
{
 u32 valid_flags = BIT(CMTP_LOOPBACK);
 memset(ci, 0, sizeof(*ci));
 bacpy(&ci->bdaddr, &session->bdaddr);

 ci->flags = session->flags & valid_flags;
 ci->state = session->state;

 ci->num = session->num;
}
