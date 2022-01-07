; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_close_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_close_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i64 }
%struct.snd_ca0106 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PCM_FRONT_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_close_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_close_playback(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ca0106_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ca0106* %9, %struct.snd_ca0106** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %14, align 8
  store %struct.snd_ca0106_pcm* %15, %struct.snd_ca0106_pcm** %6, align 8
  %16 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %25 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @restore_spdif_bits(%struct.snd_ca0106* %24, i64 %27)
  %29 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCM_FRONT_CHANNEL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %1
  %35 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %36 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @snd_ca0106_pcm_power_dac(%struct.snd_ca0106* %35, i64 %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @restore_spdif_bits(%struct.snd_ca0106*, i64) #1

declare dso_local i32 @snd_ca0106_pcm_power_dac(%struct.snd_ca0106*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
