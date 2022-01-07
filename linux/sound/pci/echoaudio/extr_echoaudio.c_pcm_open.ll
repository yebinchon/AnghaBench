; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.audiopipe*, %struct.TYPE_6__ }
%struct.audiopipe = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8*, i32, i64 }
%struct.TYPE_6__ = type { i8, i32, i32 }
%struct.echoaudio = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm_hardware_skel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"max_channels=%d\0A\00", align 1
@channels_list = common dso_local global i8* null, align 8
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_8000_48000 = common dso_local global i32 0, align 4
@audiopipe_free = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_rule_sample_rate = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"s-g list allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i8)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.audiopipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %174

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %18)
  store %struct.echoaudio* %19, %struct.echoaudio** %6, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.audiopipe* @kzalloc(i32 48, i32 %23)
  store %struct.audiopipe* %24, %struct.audiopipe** %8, align 8
  %25 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %26 = icmp ne %struct.audiopipe* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %174

30:                                               ; preds = %17
  %31 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %32 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %34 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %33, i32 0, i32 3
  %35 = call i32 @memcpy(%struct.TYPE_6__* %34, i32* @pcm_hardware_skel, i32 4)
  %36 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %37 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8, i8* %5, align 1
  %42 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8 signext %41)
  %43 = load i8*, i8** @channels_list, align 8
  %44 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %45 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %48 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %61, %30
  %51 = load i8*, i8** @channels_list, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %5, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %50

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %67 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %70 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 8
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %5, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load i8, i8* %5, align 1
  %79 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %80 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8 %78, i8* %81, align 8
  br label %82

82:                                               ; preds = %77, %64
  %83 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %84 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %90 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 48000, i32* %91, align 4
  %92 = load i32, i32* @SNDRV_PCM_RATE_8000_48000, align 4
  %93 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %94 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %92
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %88, %82
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 2
  %101 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %102 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %101, i32 0, i32 3
  %103 = bitcast %struct.TYPE_6__* %100 to i8*
  %104 = bitcast %struct.TYPE_6__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 12, i1 false)
  %105 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 1
  store %struct.audiopipe* %105, %struct.audiopipe** %107, align 8
  %108 = load i32, i32* @audiopipe_free, align 4
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %112 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %111)
  %113 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %114 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %115 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %116 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %115, i32 0, i32 2
  %117 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %113, i32 0, i32 %114, %struct.TYPE_5__* %116)
  store i32 %117, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %98
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %174

121:                                              ; preds = %98
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %123 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %124 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %174

128:                                              ; preds = %121
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %130 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %131 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %129, i32 0, i32 %130, i32 32)
  store i32 %131, i32* %9, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %174

135:                                              ; preds = %128
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %137 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %138 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %136, i32 0, i32 %137, i32 32)
  store i32 %138, i32* %9, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %174

142:                                              ; preds = %135
  %143 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %143, i32 0, i32 0
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %144, align 8
  %146 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %147 = load i32, i32* @hw_rule_sample_rate, align 4
  %148 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %149 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %150 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %145, i32 0, i32 %146, i32 %147, %struct.echoaudio* %148, i32 %149, i32 -1)
  store i32 %150, i32* %9, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %174

154:                                              ; preds = %142
  %155 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %156 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %157 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @snd_dma_pci_data(i32 %158)
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %162 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %161, i32 0, i32 1
  %163 = call i32 @snd_dma_alloc_pages(i32 %155, i32 %159, i32 %160, i32* %162)
  store i32 %163, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %167 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %3, align 4
  br label %174

173:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %165, %152, %140, %133, %126, %119, %27, %14
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.audiopipe* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.echoaudio*, i32, i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
