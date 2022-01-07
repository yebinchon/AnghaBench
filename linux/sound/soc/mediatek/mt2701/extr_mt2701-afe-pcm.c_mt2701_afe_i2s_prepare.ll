; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_i2s_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_afe_i2s_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mtk_base_afe = type { %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { %struct.mt2701_i2s_path*, %struct.TYPE_3__* }
%struct.mt2701_i2s_path = type { i32* }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @mt2701_afe_i2s_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_afe_i2s_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mt2701_afe_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt2701_i2s_path*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = call %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.mtk_base_afe* %13, %struct.mtk_base_afe** %6, align 8
  %14 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %14, i32 0, i32 0
  %16 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %15, align 8
  store %struct.mt2701_afe_private* %16, %struct.mt2701_afe_private** %7, align 8
  %17 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mt2701_dai_num_to_i2s(%struct.mtk_base_afe* %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %7, align 8
  %23 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %105

31:                                               ; preds = %2
  %32 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %7, align 8
  %33 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %32, i32 0, i32 0
  %34 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %34, i64 %36
  store %struct.mt2701_i2s_path* %37, %struct.mt2701_i2s_path** %10, align 8
  %38 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %10, align 8
  %39 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %105

50:                                               ; preds = %31
  %51 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 1, %54 ], [ %56, %55 ]
  %59 = call i32 @mt2701_mclk_configuration(%struct.mtk_base_afe* %51, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %105

64:                                               ; preds = %57
  %65 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %10, align 8
  %66 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 1, i32* %71, align 4
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %64
  %78 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %79 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %10, align 8
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mt2701_i2s_path_enable(%struct.mtk_base_afe* %78, %struct.mt2701_i2s_path* %79, i32 %85, i32 %90)
  br label %92

92:                                               ; preds = %77, %64
  %93 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %94 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %10, align 8
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mt2701_i2s_path_enable(%struct.mtk_base_afe* %93, %struct.mt2701_i2s_path* %94, i32 %98, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %92, %62, %47, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.mtk_base_afe* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mt2701_dai_num_to_i2s(%struct.mtk_base_afe*, i32) #1

declare dso_local i32 @mt2701_mclk_configuration(%struct.mtk_base_afe*, i32) #1

declare dso_local i32 @mt2701_i2s_path_enable(%struct.mtk_base_afe*, %struct.mt2701_i2s_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
