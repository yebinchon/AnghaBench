
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ VIRTIO_DEV_ANY_ID ;
 int add_wildcard (char*) ;
 scalar_t__ device ;
 int strcpy (char*,char*) ;
 scalar_t__ vendor ;
 int virtio_device_id ;

__attribute__((used)) static int do_virtio_entry(const char *filename, void *symval,
      char *alias)
{
 DEF_FIELD(symval, virtio_device_id, device);
 DEF_FIELD(symval, virtio_device_id, vendor);

 strcpy(alias, "virtio:");
 ADD(alias, "d", device != VIRTIO_DEV_ANY_ID, device);
 ADD(alias, "v", vendor != VIRTIO_DEV_ANY_ID, vendor);

 add_wildcard(alias);
 return 1;
}
