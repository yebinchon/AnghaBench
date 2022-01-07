
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct mei_client {unsigned char max_msg_length; unsigned char protocol_version; } ;
struct mei_connect_client_data {struct mei_client out_client_properties; int const in_client_uuid; } ;
struct mei {int verbose; int fd; int initialized; unsigned char buf_size; unsigned char prot_ver; int const guid; } ;
typedef int data ;


 int IOCTL_MEI_CONNECT_CLIENT ;
 int O_RDWR ;
 int ioctl (int,int ,struct mei_connect_client_data*) ;
 int mei_deinit (struct mei*) ;
 int mei_err (struct mei*,char*,...) ;
 int mei_msg (struct mei*,char*,unsigned char) ;
 int memcpy (int const*,int const*,int) ;
 int memset (struct mei_connect_client_data*,int ,int) ;
 int open (char*,int ) ;

__attribute__((used)) static bool mei_init(struct mei *me, const uuid_le *guid,
  unsigned char req_protocol_version, bool verbose)
{
 int result;
 struct mei_client *cl;
 struct mei_connect_client_data data;

 me->verbose = verbose;

 me->fd = open("/dev/mei0", O_RDWR);
 if (me->fd == -1) {
  mei_err(me, "Cannot establish a handle to the Intel MEI driver\n");
  goto err;
 }
 memcpy(&me->guid, guid, sizeof(*guid));
 memset(&data, 0, sizeof(data));
 me->initialized = 1;

 memcpy(&data.in_client_uuid, &me->guid, sizeof(me->guid));
 result = ioctl(me->fd, IOCTL_MEI_CONNECT_CLIENT, &data);
 if (result) {
  mei_err(me, "IOCTL_MEI_CONNECT_CLIENT receive message. err=%d\n", result);
  goto err;
 }
 cl = &data.out_client_properties;
 mei_msg(me, "max_message_length %d\n", cl->max_msg_length);
 mei_msg(me, "protocol_version %d\n", cl->protocol_version);

 if ((req_protocol_version > 0) &&
      (cl->protocol_version != req_protocol_version)) {
  mei_err(me, "Intel MEI protocol version not supported\n");
  goto err;
 }

 me->buf_size = cl->max_msg_length;
 me->prot_ver = cl->protocol_version;

 return 1;
err:
 mei_deinit(me);
 return 0;
}
