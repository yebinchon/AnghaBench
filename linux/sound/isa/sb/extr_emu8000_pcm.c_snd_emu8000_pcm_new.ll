; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_snd_emu8000_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_snd_emu8000_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_emu8000 = type { %struct.snd_pcm* }
%struct.snd_pcm = type { i32, %struct.snd_emu8000* }

@.str = private unnamed_addr constant [12 x i8] c"Emu8000 PCM\00", align 1
@snd_emu8000_pcm_free = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@emu8k_pcm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu8000_pcm_new(%struct.snd_card* %0, %struct.snd_emu8000* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_emu8000*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_emu8000* %1, %struct.snd_emu8000** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @snd_pcm_new(%struct.snd_card* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 0, %struct.snd_pcm** %8)
  store i32 %12, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 1
  store %struct.snd_emu8000* %17, %struct.snd_emu8000** %19, align 8
  %20 = load i32, i32* @snd_emu8000_pcm_free, align 4
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %22 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %24 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %25 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %23, i32 %24, i32* @emu8k_pcm_ops)
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %27 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %28 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %27, i32 0, i32 0
  store %struct.snd_pcm* %26, %struct.snd_pcm** %28, align 8
  %29 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %31 = call i32 @snd_device_register(%struct.snd_card* %29, %struct.snd_pcm* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_device_register(%struct.snd_card*, %struct.snd_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
