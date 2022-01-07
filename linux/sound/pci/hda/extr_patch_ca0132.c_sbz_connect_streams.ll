; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_connect_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_connect_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Connect Streams entered, mutex locked and loaded.\0A\00", align 1
@SR_96_000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Connect Streams exited, mutex released.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sbz_connect_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbz_connect_streams(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %8 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @codec_dbg(%struct.hda_codec* %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @chipio_set_stream_channels(%struct.hda_codec* %12, i32 12, i32 6)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @chipio_set_stream_control(%struct.hda_codec* %14, i32 12, i32 1)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %16, i32 1613856, i32 67)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @chipio_set_stream_source_dest(%struct.hda_codec* %18, i32 20, i32 72, i32 145)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* @SR_96_000, align 4
  %22 = call i32 @chipio_set_conn_rate_no_mutex(%struct.hda_codec* %20, i32 72, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* @SR_96_000, align 4
  %25 = call i32 @chipio_set_conn_rate_no_mutex(%struct.hda_codec* %23, i32 145, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @chipio_set_stream_channels(%struct.hda_codec* %26, i32 20, i32 2)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @chipio_set_stream_control(%struct.hda_codec* %28, i32 20, i32 1)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @codec_dbg(%struct.hda_codec* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %33 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @chipio_set_stream_channels(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_write_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_source_dest(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @chipio_set_conn_rate_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
