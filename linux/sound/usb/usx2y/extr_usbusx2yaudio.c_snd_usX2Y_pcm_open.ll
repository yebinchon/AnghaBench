; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_snd_usX2Y_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_snd_usX2Y_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_usX2Y_substream*, i32 }
%struct.snd_usX2Y_substream = type { %struct.snd_pcm_substream*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USX2Y_STAT_CHIP_MMAP_PCM_URBS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@snd_usX2Y_2c = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usX2Y_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_usX2Y_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call i64 @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  %8 = inttoptr i64 %7 to %struct.snd_usX2Y_substream**
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, i64 %11
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %12, align 8
  store %struct.snd_usX2Y_substream* %13, %struct.snd_usX2Y_substream** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %5, align 8
  %17 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @USX2Y_STAT_CHIP_MMAP_PCM_URBS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %41

28:                                               ; preds = %1
  %29 = load i32, i32* @snd_usX2Y_2c, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  store %struct.snd_usX2Y_substream* %32, %struct.snd_usX2Y_substream** %34, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %37 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %36, i32 0, i32 0
  store %struct.snd_pcm_substream* %35, %struct.snd_pcm_substream** %37, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %40 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %38, i32 %39, i32 1000, i32 200000)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
