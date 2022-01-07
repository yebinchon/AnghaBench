; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_disconnect_minor.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_disconnect_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_3__, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@SNDRV_OSS_DEVICE_TYPE_PCM = common dso_local global i32 0, align 4
@dsp_map = common dso_local global i32* null, align 8
@SNDRV_OSS_INFO_DEV_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*)* @snd_pcm_oss_disconnect_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_disconnect_minor(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %3 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %4 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, -2
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_PCM, align 4
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @snd_unregister_oss_device(i32 %21, %struct.TYPE_4__* %24, i32 0)
  br label %26

26:                                               ; preds = %15, %8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, -3
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_PCM, align 4
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @snd_unregister_oss_device(i32 %39, %struct.TYPE_4__* %42, i32 1)
  br label %44

44:                                               ; preds = %33, %26
  %45 = load i32*, i32** @dsp_map, align 8
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %47 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %54 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %61 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %1
  ret i32 0
}

declare dso_local i32 @snd_unregister_oss_device(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
