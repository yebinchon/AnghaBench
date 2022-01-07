
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fatal (char*,char const*,char const*,...) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void device_id_check(const char *modname, const char *device_id,
       unsigned long size, unsigned long id_size,
       void *symval)
{
 int i;

 if (size % id_size || size < id_size) {
  fatal("%s: sizeof(struct %s_device_id)=%lu is not a modulo "
        "of the size of "
        "section __mod_%s__<identifier>_device_table=%lu.\n"
        "Fix definition of struct %s_device_id "
        "in mod_devicetable.h\n",
        modname, device_id, id_size, device_id, size, device_id);
 }

 for (i = 0; i < id_size; i++ ) {
  if (*(uint8_t*)(symval+size-id_size+i)) {
   fprintf(stderr,"%s: struct %s_device_id is %lu bytes.  "
    "The last of %lu is:\n",
    modname, device_id, id_size, size / id_size);
   for (i = 0; i < id_size; i++ )
    fprintf(stderr,"0x%02x ",
     *(uint8_t*)(symval+size-id_size+i) );
   fprintf(stderr,"\n");
   fatal("%s: struct %s_device_id is not terminated "
    "with a NULL entry!\n", modname, device_id);
  }
 }
}
