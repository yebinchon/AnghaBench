
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {int size; int capacity; char* sdata; int offset; } ;
struct p9_dirent {int d_name; int d_type; int d_off; int qid; } ;
struct p9_client {int proto_version; } ;


 int P9_DEBUG_9P ;
 int P9_DEBUG_ERROR ;
 int kfree (char*) ;
 int p9_debug (int ,char*,...) ;
 int p9pdu_readf (struct p9_fcall*,int ,char*,int *,int *,int *,char**) ;
 int strscpy (int ,char*,int) ;
 int trace_9p_protocol_dump (struct p9_client*,struct p9_fcall*) ;

int p9dirent_read(struct p9_client *clnt, char *buf, int len,
    struct p9_dirent *dirent)
{
 struct p9_fcall fake_pdu;
 int ret;
 char *nameptr;

 fake_pdu.size = len;
 fake_pdu.capacity = len;
 fake_pdu.sdata = buf;
 fake_pdu.offset = 0;

 ret = p9pdu_readf(&fake_pdu, clnt->proto_version, "Qqbs", &dirent->qid,
     &dirent->d_off, &dirent->d_type, &nameptr);
 if (ret) {
  p9_debug(P9_DEBUG_9P, "<<< p9dirent_read failed: %d\n", ret);
  trace_9p_protocol_dump(clnt, &fake_pdu);
  return ret;
 }

 ret = strscpy(dirent->d_name, nameptr, sizeof(dirent->d_name));
 if (ret < 0) {
  p9_debug(P9_DEBUG_ERROR,
    "On the wire dirent name too long: %s\n",
    nameptr);
  kfree(nameptr);
  return ret;
 }
 kfree(nameptr);

 return fake_pdu.offset;
}
