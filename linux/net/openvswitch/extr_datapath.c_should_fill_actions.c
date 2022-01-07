
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OVS_UFID_F_OMIT_ACTIONS ;

__attribute__((used)) static bool should_fill_actions(uint32_t ufid_flags)
{
 return !(ufid_flags & OVS_UFID_F_OMIT_ACTIONS);
}
