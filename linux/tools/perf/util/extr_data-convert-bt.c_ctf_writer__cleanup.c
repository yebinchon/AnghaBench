
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_writer {int writer; int stream_class; int clock; } ;


 int bt_ctf_clock_put (int ) ;
 int bt_ctf_stream_class_put (int ) ;
 int bt_ctf_writer_put (int ) ;
 int ctf_writer__cleanup_data (struct ctf_writer*) ;
 int free_streams (struct ctf_writer*) ;
 int memset (struct ctf_writer*,int ,int) ;

__attribute__((used)) static void ctf_writer__cleanup(struct ctf_writer *cw)
{
 ctf_writer__cleanup_data(cw);

 bt_ctf_clock_put(cw->clock);
 free_streams(cw);
 bt_ctf_stream_class_put(cw->stream_class);
 bt_ctf_writer_put(cw->writer);


 memset(cw, 0, sizeof(*cw));
}
