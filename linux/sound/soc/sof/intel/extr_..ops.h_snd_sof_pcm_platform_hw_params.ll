; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_..ops.h_snd_sof_pcm_platform_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_..ops.h_snd_sof_pcm_platform_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.sof_ipc_stream_params = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)* @snd_sof_pcm_platform_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sof_pcm_platform_hw_params(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1, %struct.snd_pcm_hw_params* %2, %struct.sof_ipc_stream_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_hw_params*, align 8
  %9 = alloca %struct.sof_ipc_stream_params*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %8, align 8
  store %struct.sof_ipc_stream_params* %3, %struct.sof_ipc_stream_params** %9, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %11 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %10)
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %15 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)*, i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)** %16, align 8
  %18 = icmp ne i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %21 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)*, i32 (%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.sof_ipc_stream_params*)** %22, align 8
  %24 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %27 = load %struct.sof_ipc_stream_params*, %struct.sof_ipc_stream_params** %9, align 8
  %28 = call i32 %23(%struct.snd_sof_dev* %24, %struct.snd_pcm_substream* %25, %struct.snd_pcm_hw_params* %26, %struct.sof_ipc_stream_params* %27)
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
