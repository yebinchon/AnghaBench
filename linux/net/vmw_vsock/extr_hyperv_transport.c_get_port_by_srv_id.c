
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;



__attribute__((used)) static unsigned int get_port_by_srv_id(const guid_t *svr_id)
{
 return *((unsigned int *)svr_id);
}
