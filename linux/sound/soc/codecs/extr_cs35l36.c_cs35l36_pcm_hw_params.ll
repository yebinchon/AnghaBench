; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.cs35l36_private = type { i32 }

@cs35l36_fs_rates = common dso_local global %struct.TYPE_3__* null, align 8
@CS35L36_GLOBAL_CLK_CTRL = common dso_local global i32 0, align 4
@CS35L36_GLOBAL_FS_MASK = common dso_local global i32 0, align 4
@CS35L36_GLOBAL_FS_SHIFT = common dso_local global i32 0, align 4
@CS35L36_ASP_WIDTH_16 = common dso_local global i32 0, align 4
@CS35L36_ASP_WIDTH_24 = common dso_local global i32 0, align 4
@CS35L36_ASP_WIDTH_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CS35L36_ASP_FRAME_CTRL = common dso_local global i32 0, align 4
@CS35L36_ASP_RX_WIDTH_MASK = common dso_local global i32 0, align 4
@CS35L36_ASP_RX_WIDTH_SHIFT = common dso_local global i32 0, align 4
@CS35L36_ASP_TX_WIDTH_MASK = common dso_local global i32 0, align 4
@CS35L36_ASP_TX_WIDTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs35l36_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.cs35l36_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cs35l36_private* @snd_soc_component_get_drvdata(i32 %14)
  store %struct.cs35l36_private* %15, %struct.cs35l36_private** %8, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %17 = call i32 @params_rate(%struct.snd_pcm_hw_params* %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs35l36_fs_rates, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs35l36_fs_rates, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load %struct.cs35l36_private*, %struct.cs35l36_private** %8, align 8
  %34 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CS35L36_GLOBAL_CLK_CTRL, align 4
  %37 = load i32, i32* @CS35L36_GLOBAL_FS_MASK, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs35l36_fs_rates, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CS35L36_GLOBAL_FS_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %32, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %53 = call i32 @params_width(%struct.snd_pcm_hw_params* %52)
  switch i32 %53, label %60 [
    i32 16, label %54
    i32 24, label %56
    i32 32, label %58
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* @CS35L36_ASP_WIDTH_16, align 4
  store i32 %55, i32* %9, align 4
  br label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @CS35L36_ASP_WIDTH_24, align 4
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @CS35L36_ASP_WIDTH_32, align 4
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %90

63:                                               ; preds = %58, %56, %54
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.cs35l36_private*, %struct.cs35l36_private** %8, align 8
  %71 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CS35L36_ASP_FRAME_CTRL, align 4
  %74 = load i32, i32* @CS35L36_ASP_RX_WIDTH_MASK, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CS35L36_ASP_RX_WIDTH_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %77)
  br label %89

79:                                               ; preds = %63
  %80 = load %struct.cs35l36_private*, %struct.cs35l36_private** %8, align 8
  %81 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CS35L36_ASP_FRAME_CTRL, align 4
  %84 = load i32, i32* @CS35L36_ASP_TX_WIDTH_MASK, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @CS35L36_ASP_TX_WIDTH_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %79, %69
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.cs35l36_private* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
