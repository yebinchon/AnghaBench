
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct rpc_pipe_msg {int len; struct idmap_msg* data; } ;
struct idmap_msg {int im_id; int im_conv; void* im_type; int im_name; } ;
struct idmap {int dummy; } ;


 int EINVAL ;
 int IDMAP_CONV_IDTONAME ;
 int IDMAP_CONV_NAMETOID ;
 int IDMAP_NAMESZ ;
 void* IDMAP_TYPE_GROUP ;
 void* IDMAP_TYPE_USER ;




 int match_int (int *,int *) ;
 int match_strlcpy (int ,int *,int ) ;
 int match_token (char*,int ,int *) ;
 int nfs_idmap_tokens ;

__attribute__((used)) static int nfs_idmap_prepare_message(char *desc, struct idmap *idmap,
         struct idmap_msg *im,
         struct rpc_pipe_msg *msg)
{
 substring_t substr;
 int token, ret;

 im->im_type = IDMAP_TYPE_GROUP;
 token = match_token(desc, nfs_idmap_tokens, &substr);

 switch (token) {
 case 129:
  im->im_type = IDMAP_TYPE_USER;

 case 131:
  im->im_conv = IDMAP_CONV_NAMETOID;
  ret = match_strlcpy(im->im_name, &substr, IDMAP_NAMESZ);
  break;

 case 128:
  im->im_type = IDMAP_TYPE_USER;

 case 130:
  im->im_conv = IDMAP_CONV_IDTONAME;
  ret = match_int(&substr, &im->im_id);
  if (ret)
   goto out;
  break;

 default:
  ret = -EINVAL;
  goto out;
 }

 msg->data = im;
 msg->len = sizeof(struct idmap_msg);

out:
 return ret;
}
