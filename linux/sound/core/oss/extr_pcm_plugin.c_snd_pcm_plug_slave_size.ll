; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_slave_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_slave_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin = type { i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)*, %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin* }

@ENXIO = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_pcm_plug_slave_size(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin*, align 8
  %8 = alloca %struct.snd_pcm_plugin*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* @ENXIO, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %3, align 8
  br label %103

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %103

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = call i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %24
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %32)
  store %struct.snd_pcm_plugin* %33, %struct.snd_pcm_plugin** %6, align 8
  br label %34

34:                                               ; preds = %62, %31
  %35 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %36 = icmp ne %struct.snd_pcm_plugin* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = icmp sgt i64 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %64

42:                                               ; preds = %40
  %43 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %43, i32 0, i32 3
  %45 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %44, align 8
  store %struct.snd_pcm_plugin* %45, %struct.snd_pcm_plugin** %8, align 8
  %46 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %46, i32 0, i32 0
  %48 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %47, align 8
  %49 = icmp ne i64 (%struct.snd_pcm_plugin*, i64)* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %51, i32 0, i32 0
  %53 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %52, align 8
  %54 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 %53(%struct.snd_pcm_plugin* %54, i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %3, align 8
  br label %103

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  store %struct.snd_pcm_plugin* %63, %struct.snd_pcm_plugin** %6, align 8
  br label %34

64:                                               ; preds = %40
  br label %101

65:                                               ; preds = %24
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %71 = call %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream* %70)
  store %struct.snd_pcm_plugin* %71, %struct.snd_pcm_plugin** %6, align 8
  br label %72

72:                                               ; preds = %95, %69
  %73 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %74 = icmp ne %struct.snd_pcm_plugin* %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %76, i32 0, i32 2
  %78 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %77, align 8
  store %struct.snd_pcm_plugin* %78, %struct.snd_pcm_plugin** %7, align 8
  %79 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %79, i32 0, i32 1
  %81 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %80, align 8
  %82 = icmp ne i64 (%struct.snd_pcm_plugin*, i64)* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %84, i32 0, i32 1
  %86 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %85, align 8
  %87 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i64 %86(%struct.snd_pcm_plugin* %87, i64 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %3, align 8
  br label %103

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  store %struct.snd_pcm_plugin* %96, %struct.snd_pcm_plugin** %6, align 8
  br label %72

97:                                               ; preds = %72
  br label %100

98:                                               ; preds = %65
  %99 = call i32 (...) @snd_BUG()
  br label %100

100:                                              ; preds = %98, %97
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %101, %92, %59, %23, %17
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
