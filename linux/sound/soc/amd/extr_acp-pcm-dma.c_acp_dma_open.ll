; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { %struct.audio_substream_data*, i32 }
%struct.audio_substream_data = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.audio_drv_data = type { i32, i32, i32, i32, i32, i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@acp_st_pcm_hardware_playback = common dso_local global i32 0, align 4
@acp_pcm_hardware_playback = common dso_local global i32 0, align 4
@acp_st_pcm_hardware_capture = common dso_local global i32 0, align 4
@acp_pcm_hardware_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"set integer constraint failed\0A\00", align 1
@mmACP_EXTERNAL_INTR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp_dma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_dma_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.audio_drv_data*, align 8
  %10 = alloca %struct.audio_substream_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %18 = load i32, i32* @DRV_NAME, align 4
  %19 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %17, i32 %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %8, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.audio_drv_data* @dev_get_drvdata(i32 %22)
  store %struct.audio_drv_data* %23, %struct.audio_drv_data** %9, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.audio_substream_data* @kzalloc(i32 4, i32 %24)
  store %struct.audio_substream_data* %25, %struct.audio_substream_data** %10, align 8
  %26 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %27 = icmp ne %struct.audio_substream_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %158

31:                                               ; preds = %1
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %39 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %45 [
    i32 128, label %41
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @acp_st_pcm_hardware_playback, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @acp_pcm_hardware_playback, align 4
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %63

50:                                               ; preds = %31
  %51 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %52 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %58 [
    i32 128, label %54
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @acp_st_pcm_hardware_capture, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @acp_pcm_hardware_capture, align 4
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %66 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %75 = call i32 @kfree(%struct.audio_substream_data* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %158

77:                                               ; preds = %63
  %78 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %79 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %82 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 0
  store %struct.audio_substream_data* %83, %struct.audio_substream_data** %85, align 8
  %86 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %87 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %77
  %91 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %92 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %90
  %96 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %97 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %102 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load %struct.audio_substream_data*, %struct.audio_substream_data** %10, align 8
  %107 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @mmACP_EXTERNAL_INTR_ENB, align 4
  %110 = call i32 @acp_reg_write(i32 1, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %100, %95, %90, %77
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %111
  %118 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %119 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 128
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %132, %122
  %124 = load i32, i32* %4, align 4
  %125 = icmp sle i32 %124, 4
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %128 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @acp_set_sram_bank_state(i32 %129, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %123

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %117
  br label %157

137:                                              ; preds = %111
  %138 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %139 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 128
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  store i32 5, i32* %4, align 4
  br label %143

143:                                              ; preds = %152, %142
  %144 = load i32, i32* %4, align 4
  %145 = icmp sle i32 %144, 8
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.audio_drv_data*, %struct.audio_drv_data** %9, align 8
  %148 = getelementptr inbounds %struct.audio_drv_data, %struct.audio_drv_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @acp_set_sram_bank_state(i32 %149, i32 %150, i32 1)
  br label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %143

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %137
  br label %157

157:                                              ; preds = %156, %136
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %69, %28
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.audio_drv_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.audio_substream_data* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.audio_substream_data*) #1

declare dso_local i32 @acp_reg_write(i32, i32, i32) #1

declare dso_local i32 @acp_set_sram_bank_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
