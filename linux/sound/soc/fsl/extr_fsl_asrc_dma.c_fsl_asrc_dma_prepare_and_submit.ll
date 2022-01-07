; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_prepare_and_submit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc_dma.c_fsl_asrc_dma_prepare_and_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.fsl_asrc_pair* }
%struct.fsl_asrc_pair = type { %struct.TYPE_2__**, i32*, i64 }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream*, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@OUT = common dso_local global i64 0, align 8
@IN = common dso_local global i64 0, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to prepare slave DMA for Front-End\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fsl_asrc_dma_complete = common dso_local global i32 0, align 4
@DMA_DEV_TO_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to prepare slave DMA for Back-End\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @fsl_asrc_dma_prepare_and_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_dma_prepare_and_submit(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.fsl_asrc_pair*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @OUT, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @IN, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %4, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 2
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %23, align 8
  store %struct.snd_soc_pcm_runtime* %24, %struct.snd_soc_pcm_runtime** %5, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 1
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %6, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 2
  %30 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %29, align 8
  store %struct.fsl_asrc_pair* %30, %struct.fsl_asrc_pair** %7, align 8
  %31 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %32 = load i32, i32* @DRV_NAME, align 4
  %33 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %31, i32 %32)
  store %struct.snd_soc_component* %33, %struct.snd_soc_component** %8, align 8
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %9, align 8
  %37 = load i64, i64* @DMA_CTRL_ACK, align 8
  store i64 %37, i64* %10, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %39, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %20
  %45 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %46 = load i64, i64* %10, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %44, %20
  %49 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %50 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %52 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %65 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %64)
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %66)
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @OUT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %48
  %72 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %75

73:                                               ; preds = %48
  %74 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i64, i64* %10, align 8
  %78 = call i8* @dmaengine_prep_dma_cyclic(i32 %60, i32 %63, i32 %65, i32 %67, i32 %76, i64 %77)
  %79 = bitcast i8* %78 to %struct.TYPE_2__*
  %80 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %81 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %87
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %88, align 8
  %89 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %90 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %91, i64 %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = icmp ne %struct.TYPE_2__* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %75
  %101 = load %struct.device*, %struct.device** %9, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %175

105:                                              ; preds = %75
  %106 = load i32, i32* @fsl_asrc_dma_complete, align 4
  %107 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %108 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %114
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %106, i32* %117, align 8
  %118 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %119 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %120 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %121, i64 %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store %struct.snd_pcm_substream* %118, %struct.snd_pcm_substream** %129, align 8
  %130 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %131 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %132, i64 %137
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = call i32 @dmaengine_submit(%struct.TYPE_2__* %139)
  %141 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %142 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %4, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DMA_DEV_TO_DEV, align 4
  %148 = call i8* @dmaengine_prep_dma_cyclic(i32 %146, i32 65535, i32 64, i32 64, i32 %147, i64 0)
  %149 = bitcast i8* %148 to %struct.TYPE_2__*
  %150 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %151 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %151, align 8
  %153 = load i64, i64* %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %152, i64 %153
  store %struct.TYPE_2__* %149, %struct.TYPE_2__** %154, align 8
  %155 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %156 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %156, align 8
  %158 = load i64, i64* %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %157, i64 %158
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = icmp ne %struct.TYPE_2__* %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %105
  %163 = load %struct.device*, %struct.device** %9, align 8
  %164 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %175

167:                                              ; preds = %105
  %168 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %7, align 8
  %169 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %169, align 8
  %171 = load i64, i64* %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %170, i64 %171
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = call i32 @dmaengine_submit(%struct.TYPE_2__* %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %167, %162, %100
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i8* @dmaengine_prep_dma_cyclic(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
