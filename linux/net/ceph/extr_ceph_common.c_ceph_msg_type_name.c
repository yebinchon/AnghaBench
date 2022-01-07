
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_msg_type_name(int type)
{
 switch (type) {
 case 131: return "shutdown";
 case 134: return "ping";
 case 160: return "auth";
 case 159: return "auth_reply";
 case 141: return "mon_map";
 case 144: return "mon_get_map";
 case 140: return "mon_subscribe";
 case 139: return "mon_subscribe_ack";
 case 130: return "statfs";
 case 129: return "statfs_reply";
 case 143: return "mon_get_version";
 case 142: return "mon_get_version_reply";
 case 147: return "mds_map";
 case 148: return "fs_map_user";
 case 150: return "client_session";
 case 154: return "client_reconnect";
 case 152: return "client_request";
 case 151: return "client_request_forward";
 case 153: return "client_reply";
 case 157: return "client_caps";
 case 158: return "client_cap_release";
 case 155: return "client_quota";
 case 149: return "client_snap";
 case 156: return "client_lease";
 case 132: return "poolop_reply";
 case 133: return "poolop";
 case 146: return "mon_command";
 case 145: return "mon_command_ack";
 case 137: return "osd_map";
 case 136: return "osd_op";
 case 135: return "osd_opreply";
 case 128: return "watch_notify";
 case 138: return "osd_backoff";
 default: return "unknown";
 }
}
