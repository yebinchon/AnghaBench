
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_kvp_ipaddr_value {scalar_t__ ip_addr; scalar_t__ adapter_id; } ;
struct dirent {char* d_name; } ;
typedef int dev_id ;
typedef int buf ;
typedef int FILE ;
typedef int DIR ;


 int HV_E_FAIL ;
 char* KVP_NET_DIR ;
 int KVP_OP_GET_IP_INFO ;
 int MAX_IP_ADDR_SIZE ;
 int PATH_MAX ;
 int closedir (int *) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int kvp_get_ip_info (int ,char*,int ,struct hv_kvp_ipaddr_value*,int) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 unsigned int strlen (char*) ;
 char toupper (char) ;

__attribute__((used)) static int kvp_mac_to_ip(struct hv_kvp_ipaddr_value *kvp_ip_val)
{
 char *mac = (char *)kvp_ip_val->adapter_id;
 DIR *dir;
 struct dirent *entry;
 FILE *file;
 char *p, *x;
 char *if_name = ((void*)0);
 char buf[256];
 char dev_id[PATH_MAX];
 unsigned int i;
 int error = HV_E_FAIL;

 dir = opendir(KVP_NET_DIR);
 if (dir == ((void*)0))
  return HV_E_FAIL;

 while ((entry = readdir(dir)) != ((void*)0)) {



  snprintf(dev_id, sizeof(dev_id), "%s%s/address", KVP_NET_DIR,
    entry->d_name);

  file = fopen(dev_id, "r");
  if (file == ((void*)0))
   continue;

  p = fgets(buf, sizeof(buf), file);
  fclose(file);
  if (!p)
   continue;

  x = strchr(p, '\n');
  if (x)
   *x = '\0';

  for (i = 0; i < strlen(p); i++)
   p[i] = toupper(p[i]);

  if (strcmp(p, mac))
   continue;





  if_name = entry->d_name;
  if (!if_name)
   continue;

  error = kvp_get_ip_info(0, if_name, KVP_OP_GET_IP_INFO,
     kvp_ip_val, MAX_IP_ADDR_SIZE * 2);

  if (!error && strlen((char *)kvp_ip_val->ip_addr))
   break;
 }

 closedir(dir);
 return error;
}
