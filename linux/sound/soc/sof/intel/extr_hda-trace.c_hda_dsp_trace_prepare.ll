; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-trace.c_hda_dsp_trace_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.snd_dma_buffer, %struct.TYPE_2__* }
%struct.snd_dma_buffer = type { i32 }
%struct.TYPE_2__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { %struct.hdac_ext_stream* }
%struct.hdac_ext_stream = type { %struct.hdac_stream }
%struct.hdac_stream = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"error: hdac prepare failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @hda_dsp_trace_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_dsp_trace_prepare(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.sof_intel_hda_dev*, align 8
  %4 = alloca %struct.hdac_ext_stream*, align 8
  %5 = alloca %struct.hdac_stream*, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %9 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %11, align 8
  store %struct.sof_intel_hda_dev* %12, %struct.sof_intel_hda_dev** %3, align 8
  %13 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %3, align 8
  %14 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %13, i32 0, i32 0
  %15 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %14, align 8
  store %struct.hdac_ext_stream* %15, %struct.hdac_ext_stream** %4, align 8
  %16 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %16, i32 0, i32 0
  store %struct.hdac_stream* %17, %struct.hdac_stream** %5, align 8
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 1
  store %struct.snd_dma_buffer* %19, %struct.snd_dma_buffer** %6, align 8
  %20 = load %struct.hdac_stream*, %struct.hdac_stream** %5, align 8
  %21 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %23 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hdac_stream*, %struct.hdac_stream** %5, align 8
  %27 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %29 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %4, align 8
  %30 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %31 = call i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev* %28, %struct.hdac_ext_stream* %29, %struct.snd_dma_buffer* %30, i32* null)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %1
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, %struct.snd_dma_buffer*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
