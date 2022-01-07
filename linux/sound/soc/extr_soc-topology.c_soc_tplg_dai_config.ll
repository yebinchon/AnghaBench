; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dai_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dai_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_tplg_dai = type { i64, i64, %struct.snd_soc_tplg_stream_caps*, i64, i64, i32, i64 }
%struct.snd_soc_tplg_stream_caps = type { i32 }
%struct.snd_soc_dai_link_component = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_dai_driver* }
%struct.snd_soc_dai_driver = type { %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream }
%struct.snd_soc_pcm_stream = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ASoC: physical DAI %s not registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ASoC: physical DAI %s id mismatch\0A\00", align 1
@SND_SOC_TPLG_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_SOC_TPLG_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ASoC: DAI loading failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_dai*)* @soc_tplg_dai_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_dai_config(%struct.soc_tplg* %0, %struct.snd_soc_tplg_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_dai*, align 8
  %6 = alloca %struct.snd_soc_dai_link_component, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai_driver*, align 8
  %9 = alloca %struct.snd_soc_pcm_stream*, align 8
  %10 = alloca %struct.snd_soc_tplg_stream_caps*, align 8
  %11 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_dai* %1, %struct.snd_soc_tplg_dai** %5, align 8
  %12 = call i32 @memset(%struct.snd_soc_dai_link_component* %6, i32 0, i32 4)
  %13 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call %struct.snd_soc_dai* @snd_soc_find_dai(%struct.snd_soc_dai_link_component* %6)
  store %struct.snd_soc_dai* %17, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = icmp ne %struct.snd_soc_dai* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %22 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %122

30:                                               ; preds = %2
  %31 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @le32_to_cpu(i64 %33)
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %41 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %122

49:                                               ; preds = %30
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 1
  %52 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %51, align 8
  store %struct.snd_soc_dai_driver* %52, %struct.snd_soc_dai_driver** %8, align 8
  %53 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %54 = icmp ne %struct.snd_soc_dai_driver* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %122

58:                                               ; preds = %49
  %59 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %60 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %64, i32 0, i32 1
  store %struct.snd_soc_pcm_stream* %65, %struct.snd_soc_pcm_stream** %9, align 8
  %66 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %67 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %66, i32 0, i32 2
  %68 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %67, align 8
  %69 = load i64, i64* @SND_SOC_TPLG_STREAM_PLAYBACK, align 8
  %70 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %68, i64 %69
  store %struct.snd_soc_tplg_stream_caps* %70, %struct.snd_soc_tplg_stream_caps** %10, align 8
  %71 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %72 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %10, align 8
  %73 = call i32 @set_stream_info(%struct.snd_soc_pcm_stream* %71, %struct.snd_soc_tplg_stream_caps* %72)
  br label %74

74:                                               ; preds = %63, %58
  %75 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %81 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %80, i32 0, i32 0
  store %struct.snd_soc_pcm_stream* %81, %struct.snd_soc_pcm_stream** %9, align 8
  %82 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %83 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %82, i32 0, i32 2
  %84 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %83, align 8
  %85 = load i64, i64* @SND_SOC_TPLG_STREAM_CAPTURE, align 8
  %86 = getelementptr inbounds %struct.snd_soc_tplg_stream_caps, %struct.snd_soc_tplg_stream_caps* %84, i64 %85
  store %struct.snd_soc_tplg_stream_caps* %86, %struct.snd_soc_tplg_stream_caps** %10, align 8
  %87 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %9, align 8
  %88 = load %struct.snd_soc_tplg_stream_caps*, %struct.snd_soc_tplg_stream_caps** %10, align 8
  %89 = call i32 @set_stream_info(%struct.snd_soc_pcm_stream* %87, %struct.snd_soc_tplg_stream_caps* %88)
  br label %90

90:                                               ; preds = %79, %74
  %91 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %92 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %97 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %98 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @le32_to_cpu(i64 %99)
  %101 = load %struct.snd_soc_tplg_dai*, %struct.snd_soc_tplg_dai** %5, align 8
  %102 = getelementptr inbounds %struct.snd_soc_tplg_dai, %struct.snd_soc_tplg_dai* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @le32_to_cpu(i64 %103)
  %105 = call i32 @set_dai_flags(%struct.snd_soc_dai_driver* %96, i64 %100, i64 %104)
  br label %106

106:                                              ; preds = %95, %90
  %107 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %108 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %8, align 8
  %109 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %110 = call i32 @soc_tplg_dai_load(%struct.soc_tplg* %107, %struct.snd_soc_dai_driver* %108, i32* null, %struct.snd_soc_dai* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %115 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %122

121:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %113, %55, %39, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.snd_soc_dai_link_component*, i32, i32) #1

declare dso_local %struct.snd_soc_dai* @snd_soc_find_dai(%struct.snd_soc_dai_link_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @set_stream_info(%struct.snd_soc_pcm_stream*, %struct.snd_soc_tplg_stream_caps*) #1

declare dso_local i32 @set_dai_flags(%struct.snd_soc_dai_driver*, i64, i64) #1

declare dso_local i32 @soc_tplg_dai_load(%struct.soc_tplg*, %struct.snd_soc_dai_driver*, i32*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
