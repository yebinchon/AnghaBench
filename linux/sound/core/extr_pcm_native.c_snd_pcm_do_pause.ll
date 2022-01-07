; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_do_pause.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_do_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i64, %struct.snd_pcm_substream* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_PAUSE_PUSH = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_PAUSE_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_do_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_do_pause(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = call i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.snd_pcm_substream*, i32)**
  %35 = load i32 (%struct.snd_pcm_substream*, i32)*, i32 (%struct.snd_pcm_substream*, i32)** %34, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* @SNDRV_PCM_TRIGGER_PAUSE_PUSH, align 4
  br label %43

41:                                               ; preds = %20
  %42 = load i32, i32* @SNDRV_PCM_TRIGGER_PAUSE_RELEASE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 %35(%struct.snd_pcm_substream* %36, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
