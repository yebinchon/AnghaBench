
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EINVAL ;
 long ENOIOCTLCMD ;
 scalar_t__ ORANGEFS_DEV_MAGIC ;
 int ORANGEFS_DEV_MAXNR ;
 int _IOC_NR (unsigned int) ;
 scalar_t__ _IOC_TYPE (unsigned int) ;
 int gossip_err (char*,unsigned int,scalar_t__,...) ;

__attribute__((used)) static inline long check_ioctl_command(unsigned int command)
{

 if (_IOC_TYPE(command) != ORANGEFS_DEV_MAGIC) {
  gossip_err("device ioctl magic numbers don't match! Did you rebuild pvfs2-client-core/libpvfs2? [cmd %x, magic %x != %x]\n",
   command,
   _IOC_TYPE(command),
   ORANGEFS_DEV_MAGIC);
  return -EINVAL;
 }

 if (_IOC_NR(command) >= ORANGEFS_DEV_MAXNR || _IOC_NR(command) <= 0) {
  gossip_err("Invalid ioctl command number [%d >= %d]\n",
      _IOC_NR(command), ORANGEFS_DEV_MAXNR);
  return -ENOIOCTLCMD;
 }
 return 0;
}
