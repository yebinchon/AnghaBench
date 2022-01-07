
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;


 int AA_BUG (int ) ;
 int AA_MAY_CREATE ;
 int OP_CREATE ;
 int aa_af_perm (struct aa_label*,int ,int ,int,int,int) ;
 int af_select (int,int ,int ) ;
 struct aa_label* begin_current_label_crit_section () ;
 int create_perm (struct aa_label*,int,int,int) ;
 int end_current_label_crit_section (struct aa_label*) ;
 int in_interrupt () ;
 scalar_t__ unconfined (struct aa_label*) ;

__attribute__((used)) static int apparmor_socket_create(int family, int type, int protocol, int kern)
{
 struct aa_label *label;
 int error = 0;

 AA_BUG(in_interrupt());

 label = begin_current_label_crit_section();
 if (!(kern || unconfined(label)))
  error = af_select(family,
      create_perm(label, family, type, protocol),
      aa_af_perm(label, OP_CREATE, AA_MAY_CREATE,
          family, type, protocol));
 end_current_label_crit_section(label);

 return error;
}
