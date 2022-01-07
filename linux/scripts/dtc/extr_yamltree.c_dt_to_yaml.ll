; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_yamltree.c_dt_to_yaml.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_yamltree.c_dt_to_yaml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i32 }

@YAML_UTF8_ENCODING = common dso_local global i32 0, align 4
@YAML_SEQ_TAG = common dso_local global i64 0, align 8
@YAML_ANY_SEQUENCE_STYLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_to_yaml(i32* %0, %struct.dt_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.dt_info* %1, %struct.dt_info** %4, align 8
  %7 = call i32 @yaml_emitter_initialize(i32* %5)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @yaml_emitter_set_output_file(i32* %5, i32* %8)
  %10 = load i32, i32* @YAML_UTF8_ENCODING, align 4
  %11 = call i32 @yaml_stream_start_event_initialize(i32* %6, i32 %10)
  %12 = call i32 @yaml_emitter_emit_or_die(i32* %5, i32* %6)
  %13 = call i32 @yaml_document_start_event_initialize(i32* %6, i32* null, i32* null, i32* null, i32 0)
  %14 = call i32 @yaml_emitter_emit_or_die(i32* %5, i32* %6)
  %15 = load i64, i64* @YAML_SEQ_TAG, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* @YAML_ANY_SEQUENCE_STYLE, align 4
  %18 = call i32 @yaml_sequence_start_event_initialize(i32* %6, i32* null, i32* %16, i32 1, i32 %17)
  %19 = call i32 @yaml_emitter_emit_or_die(i32* %5, i32* %6)
  %20 = load %struct.dt_info*, %struct.dt_info** %4, align 8
  %21 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @yaml_tree(i32 %22, i32* %5)
  %24 = call i32 @yaml_sequence_end_event_initialize(i32* %6)
  %25 = call i32 @yaml_emitter_emit_or_die(i32* %5, i32* %6)
  %26 = call i32 @yaml_document_end_event_initialize(i32* %6, i32 0)
  %27 = call i32 @yaml_emitter_emit_or_die(i32* %5, i32* %6)
  %28 = call i32 @yaml_stream_end_event_initialize(i32* %6)
  %29 = call i32 @yaml_emitter_emit_or_die(i32* %5, i32* %6)
  %30 = call i32 @yaml_emitter_delete(i32* %5)
  ret void
}

declare dso_local i32 @yaml_emitter_initialize(i32*) #1

declare dso_local i32 @yaml_emitter_set_output_file(i32*, i32*) #1

declare dso_local i32 @yaml_stream_start_event_initialize(i32*, i32) #1

declare dso_local i32 @yaml_emitter_emit_or_die(i32*, i32*) #1

declare dso_local i32 @yaml_document_start_event_initialize(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @yaml_sequence_start_event_initialize(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @yaml_tree(i32, i32*) #1

declare dso_local i32 @yaml_sequence_end_event_initialize(i32*) #1

declare dso_local i32 @yaml_document_end_event_initialize(i32*, i32) #1

declare dso_local i32 @yaml_stream_end_event_initialize(i32*) #1

declare dso_local i32 @yaml_emitter_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
