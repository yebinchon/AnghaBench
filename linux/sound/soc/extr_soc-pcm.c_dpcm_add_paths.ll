; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_add_paths.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_add_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, %struct.snd_soc_card* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dapm_widget_list = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ASoC: no BE found for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ASoC: can't connect %s\0A\00", align 1
@SND_SOC_DPCM_UPDATE_BE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ASoC: found %d new BE paths\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, i32, %struct.snd_soc_dapm_widget_list**)* @dpcm_add_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpcm_add_paths(%struct.snd_soc_pcm_runtime* %0, i32 %1, %struct.snd_soc_dapm_widget_list** %2) #0 {
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_widget_list**, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca %struct.snd_soc_dapm_widget_list*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dapm_widget_list** %2, %struct.snd_soc_dapm_widget_list*** %6, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 4
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %14, align 8
  store %struct.snd_soc_card* %15, %struct.snd_soc_card** %7, align 8
  %16 = load %struct.snd_soc_dapm_widget_list**, %struct.snd_soc_dapm_widget_list*** %6, align 8
  %17 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %16, align 8
  store %struct.snd_soc_dapm_widget_list* %17, %struct.snd_soc_dapm_widget_list** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %135, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %138

24:                                               ; preds = %18
  %25 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %8, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 128, label %40
  ]

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %135

39:                                               ; preds = %34
  br label %47

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %135

45:                                               ; preds = %40
  br label %47

46:                                               ; preds = %24
  br label %135

47:                                               ; preds = %45, %39
  %48 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %49 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %8, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.snd_soc_pcm_runtime* @dpcm_get_be(%struct.snd_soc_card* %48, %struct.TYPE_6__* %55, i32 %56)
  store %struct.snd_soc_pcm_runtime* %57, %struct.snd_soc_pcm_runtime** %9, align 8
  %58 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %59 = icmp ne %struct.snd_soc_pcm_runtime* %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %47
  %61 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %62 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %8, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %135

74:                                               ; preds = %47
  %75 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %76 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %135

82:                                               ; preds = %74
  %83 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %82
  %93 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %94 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %135

98:                                               ; preds = %92, %82
  %99 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %100 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @dpcm_be_connect(%struct.snd_soc_pcm_runtime* %99, %struct.snd_soc_pcm_runtime* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %107 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.snd_soc_dapm_widget_list*, %struct.snd_soc_dapm_widget_list** %8, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dapm_widget_list, %struct.snd_soc_dapm_widget_list* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %111, i64 %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %138

119:                                              ; preds = %98
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %135

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* @SND_SOC_DPCM_UPDATE_BE, align 4
  %126 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %127 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %125, i32* %132, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %124, %122, %97, %81, %60, %46, %44, %38
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %18

138:                                              ; preds = %105, %18
  %139 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %140 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @dev_dbg(i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local %struct.snd_soc_pcm_runtime* @dpcm_get_be(%struct.snd_soc_card*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dpcm_be_connect(%struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
