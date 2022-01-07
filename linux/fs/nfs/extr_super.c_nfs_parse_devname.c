
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MOUNT ;
 int dfprintk (int ,char*,...) ;
 char* kstrndup (char const*,size_t,int ) ;
 char* strchr (char const*,char) ;
 size_t strlen (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nfs_parse_devname(const char *dev_name,
        char **hostname, size_t maxnamlen,
        char **export_path, size_t maxpathlen)
{
 size_t len;
 char *end;

 if (unlikely(!dev_name || !*dev_name)) {
  dfprintk(MOUNT, "NFS: device name not specified\n");
  return -EINVAL;
 }


 if (*dev_name == '[') {
  end = strchr(++dev_name, ']');
  if (end == ((void*)0) || end[1] != ':')
   goto out_bad_devname;

  len = end - dev_name;
  end++;
 } else {
  char *comma;

  end = strchr(dev_name, ':');
  if (end == ((void*)0))
   goto out_bad_devname;
  len = end - dev_name;


  comma = strchr(dev_name, ',');
  if (comma != ((void*)0) && comma < end)
   len = comma - dev_name;
 }

 if (len > maxnamlen)
  goto out_hostname;


 *hostname = kstrndup(dev_name, len, GFP_KERNEL);
 if (*hostname == ((void*)0))
  goto out_nomem;
 len = strlen(++end);
 if (len > maxpathlen)
  goto out_path;
 *export_path = kstrndup(end, len, GFP_KERNEL);
 if (!*export_path)
  goto out_nomem;

 dfprintk(MOUNT, "NFS: MNTPATH: '%s'\n", *export_path);
 return 0;

out_bad_devname:
 dfprintk(MOUNT, "NFS: device name not in host:path format\n");
 return -EINVAL;

out_nomem:
 dfprintk(MOUNT, "NFS: not enough memory to parse device name\n");
 return -ENOMEM;

out_hostname:
 dfprintk(MOUNT, "NFS: server hostname too long\n");
 return -ENAMETOOLONG;

out_path:
 dfprintk(MOUNT, "NFS: export pathname too long\n");
 return -ENAMETOOLONG;
}
