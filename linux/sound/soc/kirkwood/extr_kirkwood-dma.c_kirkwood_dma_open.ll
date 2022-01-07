; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_runtime = type { i32 }
%struct.kirkwood_dma_data = type { i32, i64, %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, i32 }
%struct.mbus_dram_target_info = type { i32 }

@kirkwood_dma_snd_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@KIRKWOOD_AUDIO_BUF_MAX = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@kirkwood_dma_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kirkwood-i2s\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@KIRKWOOD_ERR_MASK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYBACK_WIN = common dso_local global i32 0, align 4
@KIRKWOOD_RECORD_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @kirkwood_dma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_dma_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.kirkwood_dma_data*, align 8
  %7 = alloca %struct.mbus_dram_target_info*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 2
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = call %struct.kirkwood_dma_data* @kirkwood_priv(%struct.snd_pcm_substream* %12)
  store %struct.kirkwood_dma_data* %13, %struct.kirkwood_dma_data** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %14, i32* @kirkwood_dma_snd_hw)
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %18 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %19 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  %22 = load i64, i64* @KIRKWOOD_AUDIO_BUF_MAX, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %16, i32 %17, i32 %21, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %133

29:                                               ; preds = %1
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %32 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %33 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %30, i32 0, i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %133

40:                                               ; preds = %29
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 2
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %42, align 8
  %44 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %45 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %46 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %43, i32 0, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %133

53:                                               ; preds = %40
  %54 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %55 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %54, i32 0, i32 3
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %55, align 8
  %57 = icmp ne %struct.snd_pcm_substream* %56, null
  br i1 %57, label %83, label %58

58:                                               ; preds = %53
  %59 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %60 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %59, i32 0, i32 2
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %60, align 8
  %62 = icmp ne %struct.snd_pcm_substream* %61, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %58
  %64 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %65 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @kirkwood_dma_irq, align 4
  %68 = load i32, i32* @IRQF_SHARED, align 4
  %69 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %70 = call i32 @request_irq(i32 %66, i32 %67, i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.kirkwood_dma_data* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %133

76:                                               ; preds = %63
  %77 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %78 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KIRKWOOD_ERR_MASK, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 -1, i64 %81)
  br label %83

83:                                               ; preds = %76, %58, %53
  %84 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %84, %struct.mbus_dram_target_info** %7, align 8
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %8, align 8
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %83
  %95 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %96 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %95, i32 0, i32 3
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %96, align 8
  %98 = icmp ne %struct.snd_pcm_substream* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %133

102:                                              ; preds = %94
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %104 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %105 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %104, i32 0, i32 3
  store %struct.snd_pcm_substream* %103, %struct.snd_pcm_substream** %105, align 8
  %106 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %107 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @KIRKWOOD_PLAYBACK_WIN, align 4
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %7, align 8
  %112 = call i32 @kirkwood_dma_conf_mbus_windows(i64 %108, i32 %109, i64 %110, %struct.mbus_dram_target_info* %111)
  br label %132

113:                                              ; preds = %83
  %114 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %115 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %114, i32 0, i32 2
  %116 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %115, align 8
  %117 = icmp ne %struct.snd_pcm_substream* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %133

121:                                              ; preds = %113
  %122 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %123 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %124 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %123, i32 0, i32 2
  store %struct.snd_pcm_substream* %122, %struct.snd_pcm_substream** %124, align 8
  %125 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %126 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @KIRKWOOD_RECORD_WIN, align 4
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %7, align 8
  %131 = call i32 @kirkwood_dma_conf_mbus_windows(i64 %127, i32 %128, i64 %129, %struct.mbus_dram_target_info* %130)
  br label %132

132:                                              ; preds = %121, %102
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %118, %99, %73, %51, %38, %27
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.kirkwood_dma_data* @kirkwood_priv(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.kirkwood_dma_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @kirkwood_dma_conf_mbus_windows(i64, i32, i64, %struct.mbus_dram_target_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
