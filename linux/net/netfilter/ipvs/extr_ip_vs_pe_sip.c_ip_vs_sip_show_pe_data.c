
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int pe_data_len; int pe_data; } ;


 int memcpy (char*,int ,int) ;

__attribute__((used)) static int ip_vs_sip_show_pe_data(const struct ip_vs_conn *cp, char *buf)
{
 memcpy(buf, cp->pe_data, cp->pe_data_len);
 return cp->pe_data_len;
}
