; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-pcm-dma.c_sprd_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_runtime = type { i32, i64, %struct.sprd_pcm_dma_private* }
%struct.sprd_pcm_dma_private = type { i32, i32, %struct.sprd_pcm_dma_data* }
%struct.sprd_pcm_dma_data = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.dma_tx_state = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SPRD_PCM_CHANNEL_MAX = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to get dma channel %d status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @sprd_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sprd_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.sprd_pcm_dma_private*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dma_tx_state, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sprd_pcm_dma_data*, align 8
  %17 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %4, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %22, align 8
  store %struct.snd_soc_pcm_runtime* %23, %struct.snd_soc_pcm_runtime** %5, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 2
  %26 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %25, align 8
  store %struct.sprd_pcm_dma_private* %26, %struct.sprd_pcm_dma_private** %6, align 8
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %28 = load i32, i32* @DRV_NAME, align 4
  %29 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %27, i32 %28)
  store %struct.snd_soc_component* %29, %struct.snd_soc_component** %7, align 8
  %30 = load i32, i32* @SPRD_PCM_CHANNEL_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %149, %1
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %37 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %152

40:                                               ; preds = %34
  %41 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %42 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %41, i32 0, i32 2
  %43 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %43, i64 %45
  store %struct.sprd_pcm_dma_data* %46, %struct.sprd_pcm_dma_data** %16, align 8
  %47 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %16, align 8
  %48 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %149

52:                                               ; preds = %40
  %53 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %16, align 8
  %54 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %16, align 8
  %57 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dmaengine_tx_status(i32 %55, i32 %58, %struct.dma_tx_state* %14)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @DMA_ERROR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %65 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i64 0, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %164

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %71, %74
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.sprd_pcm_dma_private*, %struct.sprd_pcm_dma_private** %6, align 8
  %78 = getelementptr inbounds %struct.sprd_pcm_dma_private, %struct.sprd_pcm_dma_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = sub nsw i32 %75, %80
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %33, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %69
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %33, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %33, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %16, align 8
  %97 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  store i32 %101, i32* %11, align 4
  br label %142

102:                                              ; preds = %69
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %33, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %16, align 8
  %108 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load i32, i32* %11, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %102
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %33, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %33, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @max(i32 %121, i32 %126)
  %128 = shl i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %141

129:                                              ; preds = %102
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %33, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %33, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @min(i32 %133, i32 %138)
  %140 = shl i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %129, %117
  br label %142

142:                                              ; preds = %141, %87
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %33, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sprd_pcm_dma_data*, %struct.sprd_pcm_dma_data** %16, align 8
  %148 = getelementptr inbounds %struct.sprd_pcm_dma_data, %struct.sprd_pcm_dma_data* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %51
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %34

152:                                              ; preds = %34
  %153 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %153, i32 %154)
  store i64 %155, i64* %13, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  store i64 0, i64* %13, align 8
  br label %162

162:                                              ; preds = %161, %152
  %163 = load i64, i64* %13, align 8
  store i64 %163, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %164

164:                                              ; preds = %162, %63
  %165 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i64, i64* %2, align 8
  ret i64 %166
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
