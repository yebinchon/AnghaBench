; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_i2s_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_i2s_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { %struct.mt2701_i2s_path*, %struct.TYPE_2__* }
%struct.mt2701_i2s_path = type { i64* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt2701_afe_i2s_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2701_afe_i2s_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.mtk_base_afe*, align 8
  %6 = alloca %struct.mt2701_afe_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt2701_i2s_path*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.mtk_base_afe* %11, %struct.mtk_base_afe** %5, align 8
  %12 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %13 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %12, i32 0, i32 0
  %14 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %13, align 8
  store %struct.mt2701_afe_private* %14, %struct.mt2701_afe_private** %6, align 8
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mt2701_dai_num_to_i2s(%struct.mtk_base_afe* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %21 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %88

28:                                               ; preds = %2
  %29 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %30 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %29, i32 0, i32 0
  %31 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %31, i64 %33
  store %struct.mt2701_i2s_path* %34, %struct.mt2701_i2s_path** %8, align 8
  %35 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %8, align 8
  %36 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %8, align 8
  %46 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 0, i64* %51, align 8
  br label %53

52:                                               ; preds = %28
  br label %78

53:                                               ; preds = %44
  %54 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %55 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %8, align 8
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @mt2701_afe_i2s_path_disable(%struct.mtk_base_afe* %54, %struct.mt2701_i2s_path* %55, i32 %59)
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %69 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %8, align 8
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @mt2701_afe_i2s_path_disable(%struct.mtk_base_afe* %68, %struct.mt2701_i2s_path* %69, i32 %75)
  br label %77

77:                                               ; preds = %67, %53
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ 1, %82 ], [ %84, %83 ]
  %87 = call i32 @mt2701_afe_disable_mclk(%struct.mtk_base_afe* %79, i32 %86)
  br label %88

88:                                               ; preds = %85, %27
  ret void
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mt2701_dai_num_to_i2s(%struct.mtk_base_afe*, i32) #1

declare dso_local i32 @mt2701_afe_i2s_path_disable(%struct.mtk_base_afe*, %struct.mt2701_i2s_path*, i32) #1

declare dso_local i32 @mt2701_afe_disable_mclk(%struct.mtk_base_afe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
