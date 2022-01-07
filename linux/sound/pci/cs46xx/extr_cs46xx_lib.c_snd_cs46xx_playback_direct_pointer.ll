; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_direct_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_playback_direct_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { i64, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.snd_cs46xx = type { i32 }

@ENXIO = common dso_local global i64 0, align 8
@BA1_PBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_cs46xx_playback_direct_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_cs46xx_playback_direct_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_cs46xx_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_cs46xx* %8, %struct.snd_cs46xx** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %12, align 8
  store %struct.snd_cs46xx_pcm* %13, %struct.snd_cs46xx_pcm** %6, align 8
  %14 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %6, align 8
  %15 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i64, i64* @ENXIO, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %2, align 8
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %27 = load i32, i32* @BA1_PBA, align 4
  %28 = call i64 @snd_cs46xx_peek(%struct.snd_cs46xx* %26, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = lshr i64 %35, %38
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %25, %22
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_cs46xx_peek(%struct.snd_cs46xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
