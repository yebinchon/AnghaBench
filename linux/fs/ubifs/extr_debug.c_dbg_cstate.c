
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *dbg_cstate(int cmt_state)
{
 switch (cmt_state) {
 case 130:
  return "commit resting";
 case 133:
  return "background commit requested";
 case 131:
  return "commit required";
 case 129:
  return "BACKGROUND commit running";
 case 128:
  return "commit running and required";
 case 132:
  return "broken commit";
 default:
  return "unknown commit state";
 }
}
