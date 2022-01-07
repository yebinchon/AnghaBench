; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic23 = type { i32, i8*, i8* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@TLV320AIC23_DIGT_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tlv320aic23_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aic23*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.aic23* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.aic23* %19, %struct.aic23** %11, align 8
  %20 = load %struct.aic23*, %struct.aic23** %11, align 8
  %21 = getelementptr inbounds %struct.aic23, %struct.aic23* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load %struct.aic23*, %struct.aic23** %11, align 8
  %24 = getelementptr inbounds %struct.aic23, %struct.aic23* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i8* @params_rate(%struct.snd_pcm_hw_params* %26)
  store i8* %27, i8** %14, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load i8*, i8** %14, align 8
  store i8* %34, i8** %13, align 8
  %35 = load %struct.aic23*, %struct.aic23** %11, align 8
  %36 = getelementptr inbounds %struct.aic23, %struct.aic23* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %14, align 8
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %39, %33
  br label %51

42:                                               ; preds = %3
  %43 = load i8*, i8** %14, align 8
  store i8* %43, i8** %12, align 8
  %44 = load %struct.aic23*, %struct.aic23** %11, align 8
  %45 = getelementptr inbounds %struct.aic23, %struct.aic23* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %14, align 8
  store i8* %49, i8** %13, align 8
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50, %41
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %53 = load %struct.aic23*, %struct.aic23** %11, align 8
  %54 = getelementptr inbounds %struct.aic23, %struct.aic23* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @set_sample_rate_control(%struct.snd_soc_component* %52, i32 %55, i8* %56, i8* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %85

63:                                               ; preds = %51
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = load i32, i32* @TLV320AIC23_DIGT_FMT, align 4
  %66 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %64, i32 %65)
  %67 = and i32 %66, -13
  store i32 %67, i32* %9, align 4
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %69 = call i32 @params_width(%struct.snd_pcm_hw_params* %68)
  switch i32 %69, label %80 [
    i32 16, label %70
    i32 20, label %71
    i32 24, label %74
    i32 32, label %77
  ]

70:                                               ; preds = %63
  br label %80

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, 4
  store i32 %73, i32* %9, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, 8
  store i32 %76, i32* %9, align 4
  br label %80

77:                                               ; preds = %63
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, 12
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %63, %77, %74, %71, %70
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i32, i32* @TLV320AIC23_DIGT_FMT, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i32 %82, i32 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %61
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.aic23* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i8* @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @set_sample_rate_control(%struct.snd_soc_component*, i32, i8*, i8*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
