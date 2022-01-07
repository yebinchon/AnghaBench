
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yaml_event_t ;
typedef int yaml_emitter_t ;
typedef int yaml_char_t ;
struct dt_info {int dt; } ;
typedef int FILE ;


 int YAML_ANY_SEQUENCE_STYLE ;
 scalar_t__ YAML_SEQ_TAG ;
 int YAML_UTF8_ENCODING ;
 int yaml_document_end_event_initialize (int *,int ) ;
 int yaml_document_start_event_initialize (int *,int *,int *,int *,int ) ;
 int yaml_emitter_delete (int *) ;
 int yaml_emitter_emit_or_die (int *,int *) ;
 int yaml_emitter_initialize (int *) ;
 int yaml_emitter_set_output_file (int *,int *) ;
 int yaml_sequence_end_event_initialize (int *) ;
 int yaml_sequence_start_event_initialize (int *,int *,int *,int,int ) ;
 int yaml_stream_end_event_initialize (int *) ;
 int yaml_stream_start_event_initialize (int *,int ) ;
 int yaml_tree (int ,int *) ;

void dt_to_yaml(FILE *f, struct dt_info *dti)
{
 yaml_emitter_t emitter;
 yaml_event_t event;

 yaml_emitter_initialize(&emitter);
 yaml_emitter_set_output_file(&emitter, f);
 yaml_stream_start_event_initialize(&event, YAML_UTF8_ENCODING);
 yaml_emitter_emit_or_die(&emitter, &event);

 yaml_document_start_event_initialize(&event, ((void*)0), ((void*)0), ((void*)0), 0);
 yaml_emitter_emit_or_die(&emitter, &event);

 yaml_sequence_start_event_initialize(&event, ((void*)0), (yaml_char_t *)YAML_SEQ_TAG, 1, YAML_ANY_SEQUENCE_STYLE);
 yaml_emitter_emit_or_die(&emitter, &event);

 yaml_tree(dti->dt, &emitter);

 yaml_sequence_end_event_initialize(&event);
 yaml_emitter_emit_or_die(&emitter, &event);

 yaml_document_end_event_initialize(&event, 0);
 yaml_emitter_emit_or_die(&emitter, &event);

 yaml_stream_end_event_initialize(&event);
 yaml_emitter_emit_or_die(&emitter, &event);

 yaml_emitter_delete(&emitter);
}
