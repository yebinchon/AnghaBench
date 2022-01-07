
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ SDIO_ANY_ID ;
 int add_wildcard (char*) ;
 scalar_t__ class ;
 scalar_t__ device ;
 int sdio_device_id ;
 int strcpy (char*,char*) ;
 scalar_t__ vendor ;

__attribute__((used)) static int do_sdio_entry(const char *filename,
   void *symval, char *alias)
{
 DEF_FIELD(symval, sdio_device_id, class);
 DEF_FIELD(symval, sdio_device_id, vendor);
 DEF_FIELD(symval, sdio_device_id, device);

 strcpy(alias, "sdio:");
 ADD(alias, "c", class != (__u8)SDIO_ANY_ID, class);
 ADD(alias, "v", vendor != (__u16)SDIO_ANY_ID, vendor);
 ADD(alias, "d", device != (__u16)SDIO_ANY_ID, device);
 add_wildcard(alias);
 return 1;
}
