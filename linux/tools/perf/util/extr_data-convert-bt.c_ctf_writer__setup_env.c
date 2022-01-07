
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* hostname; char* os_release; char* version; char* arch; } ;
struct perf_header {TYPE_1__ env; } ;
struct perf_session {struct perf_header header; } ;
struct ctf_writer {struct bt_ctf_writer* writer; } ;
struct bt_ctf_writer {int dummy; } ;


 int ADD (char*,char*) ;

__attribute__((used)) static int ctf_writer__setup_env(struct ctf_writer *cw,
     struct perf_session *session)
{
 struct perf_header *header = &session->header;
 struct bt_ctf_writer *writer = cw->writer;







 do { if (bt_ctf_writer_add_environment_field(writer, "host", header->env.hostname)) return -1; } while (0);
 do { if (bt_ctf_writer_add_environment_field(writer, "sysname", "Linux")) return -1; } while (0);
 do { if (bt_ctf_writer_add_environment_field(writer, "release", header->env.os_release)) return -1; } while (0);
 do { if (bt_ctf_writer_add_environment_field(writer, "version", header->env.version)) return -1; } while (0);
 do { if (bt_ctf_writer_add_environment_field(writer, "machine", header->env.arch)) return -1; } while (0);
 do { if (bt_ctf_writer_add_environment_field(writer, "domain", "kernel")) return -1; } while (0);
 do { if (bt_ctf_writer_add_environment_field(writer, "tracer_name", "perf")) return -1; } while (0);


 return 0;
}
