; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_client_channels_buf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_client_channels_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.snd_pcm_plugin = type { i64, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format }
%struct.snd_pcm_plugin_format = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_client_channels_buf(%struct.snd_pcm_substream* %0, i8* %1, i32 %2, %struct.snd_pcm_plugin_channel** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_plugin_channel**, align 8
  %10 = alloca %struct.snd_pcm_plugin*, align 8
  %11 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %12 = alloca %struct.snd_pcm_plugin_format*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_pcm_plugin_channel** %3, %struct.snd_pcm_plugin_channel*** %9, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = call i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %17)
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %117

28:                                               ; preds = %4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %34 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %33)
  store %struct.snd_pcm_plugin* %34, %struct.snd_pcm_plugin** %10, align 8
  %35 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %35, i32 0, i32 3
  store %struct.snd_pcm_plugin_format* %36, %struct.snd_pcm_plugin_format** %12, align 8
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %39 = call %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream* %38)
  store %struct.snd_pcm_plugin* %39, %struct.snd_pcm_plugin** %10, align 8
  %40 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %40, i32 0, i32 2
  store %struct.snd_pcm_plugin_format* %41, %struct.snd_pcm_plugin_format** %12, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %43, i32 0, i32 1
  %45 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %44, align 8
  store %struct.snd_pcm_plugin_channel* %45, %struct.snd_pcm_plugin_channel** %11, align 8
  %46 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %47 = load %struct.snd_pcm_plugin_channel**, %struct.snd_pcm_plugin_channel*** %9, align 8
  store %struct.snd_pcm_plugin_channel* %46, %struct.snd_pcm_plugin_channel** %47, align 8
  %48 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %12, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_pcm_format_physical_width(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %117

55:                                               ; preds = %42
  %56 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %12, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %12, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 1
  br label %69

69:                                               ; preds = %64, %55
  %70 = phi i1 [ false, %55 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @snd_BUG_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %117

77:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %110, %77
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %82
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  %113 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %113, i32 1
  store %struct.snd_pcm_plugin_channel* %114, %struct.snd_pcm_plugin_channel** %11, align 8
  br label %78

115:                                              ; preds = %78
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %74, %53, %25
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
