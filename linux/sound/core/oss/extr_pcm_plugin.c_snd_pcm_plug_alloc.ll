; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin = type { %struct.snd_pcm_plugin*, i64 (%struct.snd_pcm_plugin*, i64)*, %struct.snd_pcm_plugin*, i64 (%struct.snd_pcm_plugin*, i64)* }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_alloc(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_plugin*, align 8
  %8 = alloca %struct.snd_pcm_plugin*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %9)
  %11 = icmp ne %struct.snd_pcm_plugin* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = call i64 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %20)
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %19
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %25)
  store %struct.snd_pcm_plugin* %26, %struct.snd_pcm_plugin** %7, align 8
  br label %27

27:                                               ; preds = %64, %24
  %28 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %28, i32 0, i32 2
  %30 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %29, align 8
  %31 = icmp ne %struct.snd_pcm_plugin* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %33, i32 0, i32 3
  %35 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %34, align 8
  %36 = icmp ne i64 (%struct.snd_pcm_plugin*, i64)* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %38, i32 0, i32 3
  %40 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %39, align 8
  %41 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 %40(%struct.snd_pcm_plugin* %41, i64 %42)
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i64, i64* %5, align 8
  %46 = icmp sle i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @snd_BUG_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %109

53:                                               ; preds = %44
  %54 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %54, i32 0, i32 2
  %56 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %55, align 8
  store %struct.snd_pcm_plugin* %56, %struct.snd_pcm_plugin** %7, align 8
  %57 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @snd_pcm_plugin_alloc(%struct.snd_pcm_plugin* %57, i64 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %109

64:                                               ; preds = %53
  br label %27

65:                                               ; preds = %27
  br label %108

66:                                               ; preds = %19
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %68 = call %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream* %67)
  store %struct.snd_pcm_plugin* %68, %struct.snd_pcm_plugin** %8, align 8
  br label %69

69:                                               ; preds = %106, %66
  %70 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %70, i32 0, i32 0
  %72 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %71, align 8
  %73 = icmp ne %struct.snd_pcm_plugin* %72, null
  br i1 %73, label %74, label %107

74:                                               ; preds = %69
  %75 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %75, i32 0, i32 1
  %77 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %76, align 8
  %78 = icmp ne i64 (%struct.snd_pcm_plugin*, i64)* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %80, i32 0, i32 1
  %82 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %81, align 8
  %83 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i64 %82(%struct.snd_pcm_plugin* %83, i64 %84)
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i64, i64* %5, align 8
  %88 = icmp sle i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @snd_BUG_ON(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ENXIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %109

95:                                               ; preds = %86
  %96 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %96, i32 0, i32 0
  %98 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %97, align 8
  store %struct.snd_pcm_plugin* %98, %struct.snd_pcm_plugin** %8, align 8
  %99 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @snd_pcm_plugin_alloc(%struct.snd_pcm_plugin* %99, i64 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %109

106:                                              ; preds = %95
  br label %69

107:                                              ; preds = %69
  br label %108

108:                                              ; preds = %107, %65
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %104, %92, %62, %50, %16
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_plugin_alloc(%struct.snd_pcm_plugin*, i64) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
