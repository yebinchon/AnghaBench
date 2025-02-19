; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_dsp_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_dsp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_pcm = type { %struct.TYPE_2__, %struct.snd_sof_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.sof_ipc_pcm_params_reply = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"error: got wrong reply for PCM %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_pcm*, %struct.snd_pcm_substream*, %struct.sof_ipc_pcm_params_reply*)* @sof_pcm_dsp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_dsp_params(%struct.snd_sof_pcm* %0, %struct.snd_pcm_substream* %1, %struct.sof_ipc_pcm_params_reply* %2) #0 {
  %4 = alloca %struct.snd_sof_pcm*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.sof_ipc_pcm_params_reply*, align 8
  %7 = alloca %struct.snd_sof_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_sof_pcm* %0, %struct.snd_sof_pcm** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store %struct.sof_ipc_pcm_params_reply* %2, %struct.sof_ipc_pcm_params_reply** %6, align 8
  %9 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %9, i32 0, i32 1
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %10, align 8
  store %struct.snd_sof_dev* %11, %struct.snd_sof_dev** %7, align 8
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = load %struct.sof_ipc_pcm_params_reply*, %struct.sof_ipc_pcm_params_reply** %6, align 8
  %15 = call i32 @snd_sof_ipc_pcm_params(%struct.snd_sof_dev* %12, %struct.snd_pcm_substream* %13, %struct.sof_ipc_pcm_params_reply* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %7, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %4, align 8
  %23 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local i32 @snd_sof_ipc_pcm_params(%struct.snd_sof_dev*, %struct.snd_pcm_substream*, %struct.sof_ipc_pcm_params_reply*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
