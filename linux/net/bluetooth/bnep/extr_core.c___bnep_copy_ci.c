
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int h_source; } ;
struct bnep_session {int flags; int role; int state; TYPE_2__* dev; TYPE_1__ eh; } ;
struct bnep_conninfo {int flags; int role; int state; int device; int dst; } ;
struct TYPE_4__ {int name; } ;


 int BIT (int ) ;
 int BNEP_SETUP_RESPONSE ;
 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int memset (struct bnep_conninfo*,int ,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void __bnep_copy_ci(struct bnep_conninfo *ci, struct bnep_session *s)
{
 u32 valid_flags = BIT(BNEP_SETUP_RESPONSE);

 memset(ci, 0, sizeof(*ci));
 memcpy(ci->dst, s->eh.h_source, ETH_ALEN);
 strcpy(ci->device, s->dev->name);
 ci->flags = s->flags & valid_flags;
 ci->state = s->state;
 ci->role = s->role;
}
