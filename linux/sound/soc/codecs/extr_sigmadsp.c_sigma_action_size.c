
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigma_action {int instr; } ;


 size_t ALIGN (size_t,int) ;



 size_t sigma_action_len (struct sigma_action*) ;

__attribute__((used)) static size_t sigma_action_size(struct sigma_action *sa)
{
 size_t payload = 0;

 switch (sa->instr) {
 case 128:
 case 129:
 case 130:
  payload = sigma_action_len(sa);
  break;
 default:
  break;
 }

 payload = ALIGN(payload, 2);

 return payload + sizeof(struct sigma_action);
}
