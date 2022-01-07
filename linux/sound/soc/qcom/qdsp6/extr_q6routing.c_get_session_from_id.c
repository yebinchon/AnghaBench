
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_data {int fedai_id; } ;
struct msm_routing_data {struct session_data* sessions; } ;


 int MAX_SESSIONS ;

__attribute__((used)) static struct session_data *get_session_from_id(struct msm_routing_data *data,
      int fedai_id)
{
 int i;

 for (i = 0; i < MAX_SESSIONS; i++) {
  if (fedai_id == data->sessions[i].fedai_id)
   return &data->sessions[i];
 }

 return ((void*)0);
}
