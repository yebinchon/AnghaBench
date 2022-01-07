
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct idmap_msg {scalar_t__ im_type; int im_conv; char* im_name; int im_id; } ;
typedef int id_str ;


 int EINVAL ;
 int ENOKEY ;


 int NFS_UINT_MAXLEN ;
 int nfs_idmap_instantiate (struct key*,struct key*,char*,size_t) ;
 int nfs_map_numeric_to_string (int ,char*,int) ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int nfs_idmap_read_and_verify_message(struct idmap_msg *im,
  struct idmap_msg *upcall,
  struct key *key, struct key *authkey)
{
 char id_str[NFS_UINT_MAXLEN];
 size_t len;
 int ret = -ENOKEY;


 if (upcall->im_type != im->im_type || upcall->im_conv != im->im_conv)
  goto out;
 switch (im->im_conv) {
 case 128:
  if (strcmp(upcall->im_name, im->im_name) != 0)
   break;

  len = 1 + nfs_map_numeric_to_string(im->im_id, id_str,
          sizeof(id_str));
  ret = nfs_idmap_instantiate(key, authkey, id_str, len);
  break;
 case 129:
  if (upcall->im_id != im->im_id)
   break;
  len = strlen(im->im_name);
  ret = nfs_idmap_instantiate(key, authkey, im->im_name, len);
  break;
 default:
  ret = -EINVAL;
 }
out:
 return ret;
}
