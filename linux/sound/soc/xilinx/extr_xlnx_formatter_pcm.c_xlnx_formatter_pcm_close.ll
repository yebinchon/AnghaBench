; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.TYPE_2__ = type { %struct.xlnx_pcm_stream_param* }
%struct.xlnx_pcm_stream_param = type { i32 }
%struct.snd_soc_component = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"audio formatter reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @xlnx_formatter_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_formatter_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlnx_pcm_stream_param*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %10, align 8
  store %struct.xlnx_pcm_stream_param* %11, %struct.xlnx_pcm_stream_param** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = load i32, i32* @DRV_NAME, align 4
  %17 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %15, i32 %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %6, align 8
  %18 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %4, align 8
  %19 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xlnx_formatter_pcm_reset(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %4, align 8
  %31 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @xlnx_formatter_disable_irqs(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %4, align 8
  %39 = call i32 @kfree(%struct.xlnx_pcm_stream_param* %38)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @xlnx_formatter_pcm_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @xlnx_formatter_disable_irqs(i32, i32) #1

declare dso_local i32 @kfree(%struct.xlnx_pcm_stream_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
