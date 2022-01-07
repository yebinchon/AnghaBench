
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int * llc_ui_sap_link_no_max ;

__attribute__((used)) static inline u16 llc_ui_next_link_no(int sap)
{
 return llc_ui_sap_link_no_max[sap]++;
}
