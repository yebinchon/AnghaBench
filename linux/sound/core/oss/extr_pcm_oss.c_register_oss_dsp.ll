; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_register_oss_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_register_oss_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_OSS_DEVICE_TYPE_PCM = common dso_local global i32 0, align 4
@snd_pcm_oss_f_reg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to register OSS PCM device %i:%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm*, i32)* @register_oss_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_oss_dsp(%struct.snd_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_PCM, align 4
  %6 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %11 = call i64 @snd_register_oss_device(i32 %5, %struct.TYPE_2__* %8, i32 %9, i32* @snd_pcm_oss_f_reg, %struct.snd_pcm* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %15 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pcm_err(%struct.snd_pcm* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %13, %2
  ret void
}

declare dso_local i64 @snd_register_oss_device(i32, %struct.TYPE_2__*, i32, i32*, %struct.snd_pcm*) #1

declare dso_local i32 @pcm_err(%struct.snd_pcm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
