
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 char* MDIO_MODULE_PREFIX ;
 int mdio_device_id ;
 int phy_id ;
 int phy_id_mask ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int do_mdio_entry(const char *filename,
    void *symval, char *alias)
{
 int i;
 DEF_FIELD(symval, mdio_device_id, phy_id);
 DEF_FIELD(symval, mdio_device_id, phy_id_mask);

 alias += sprintf(alias, MDIO_MODULE_PREFIX);

 for (i = 0; i < 32; i++) {
  if (!((phy_id_mask >> (31-i)) & 1))
   *(alias++) = '?';
  else if ((phy_id >> (31-i)) & 1)
   *(alias++) = '1';
  else
   *(alias++) = '0';
 }


 *alias = 0;

 return 1;
}
