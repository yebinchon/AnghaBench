
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dlm_lockres_list { ____Placeholder_dlm_lockres_list } dlm_lockres_list ;


 int DLM_BLOCKED_LIST ;
 int DLM_CONVERTING_LIST ;
 int DLM_GRANTED_LIST ;

__attribute__((used)) static inline char *dlm_list_in_text(enum dlm_lockres_list idx)
{
 if (idx == DLM_GRANTED_LIST)
  return "granted";
 else if (idx == DLM_CONVERTING_LIST)
  return "converting";
 else if (idx == DLM_BLOCKED_LIST)
  return "blocked";
 else
  return "unknown";
}
