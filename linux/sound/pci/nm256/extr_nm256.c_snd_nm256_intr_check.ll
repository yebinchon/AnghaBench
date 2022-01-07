; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_intr_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_intr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm256*)* @snd_nm256_intr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_intr_check(%struct.nm256* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nm256*, align 8
  store %struct.nm256* %0, %struct.nm256** %3, align 8
  %4 = load %struct.nm256*, %struct.nm256** %3, align 8
  %5 = getelementptr inbounds %struct.nm256, %struct.nm256* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = icmp sgt i64 %6, 1000
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.nm256*, %struct.nm256** %3, align 8
  %11 = getelementptr inbounds %struct.nm256, %struct.nm256* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.nm256*, %struct.nm256** %3, align 8
  %20 = call i32 @snd_nm256_playback_stop(%struct.nm256* %19)
  br label %21

21:                                               ; preds = %18, %9
  %22 = load %struct.nm256*, %struct.nm256** %3, align 8
  %23 = getelementptr inbounds %struct.nm256, %struct.nm256* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.nm256*, %struct.nm256** %3, align 8
  %32 = call i32 @snd_nm256_capture_stop(%struct.nm256* %31)
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.nm256*, %struct.nm256** %3, align 8
  %35 = getelementptr inbounds %struct.nm256, %struct.nm256* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @snd_nm256_playback_stop(%struct.nm256*) #1

declare dso_local i32 @snd_nm256_capture_stop(%struct.nm256*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
