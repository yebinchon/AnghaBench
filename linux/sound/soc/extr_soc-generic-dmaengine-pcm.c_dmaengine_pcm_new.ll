; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.snd_pcm_substream* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.dmaengine_pcm = type { i32, i64*, %struct.snd_dmaengine_pcm_config* }
%struct.snd_dmaengine_pcm_config = type { i64, i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@SND_DMAENGINE_PCM_DRV_NAME = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_COMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Missing dma channel for stream: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_IRAM = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_NO_RESIDUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @dmaengine_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmaengine_pcm_new(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.dmaengine_pcm*, align 8
  %6 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = load i32, i32* @SND_DMAENGINE_PCM_DRV_NAME, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %12, i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %4, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %16 = call %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component* %15)
  store %struct.dmaengine_pcm* %16, %struct.dmaengine_pcm** %5, align 8
  %17 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %18 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %17, i32 0, i32 2
  %19 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %18, align 8
  store %struct.snd_dmaengine_pcm_config* %19, %struct.snd_dmaengine_pcm_config** %6, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %24 = icmp ne %struct.snd_dmaengine_pcm_config* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %27 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %32 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %35 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  br label %41

39:                                               ; preds = %25, %1
  store i64 524288, i64* %9, align 8
  %40 = load i64, i64* @SIZE_MAX, align 8
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %210, %41
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %213

47:                                               ; preds = %43
  %48 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %49 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %56, align 8
  store %struct.snd_pcm_substream* %57, %struct.snd_pcm_substream** %8, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %59 = icmp ne %struct.snd_pcm_substream* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  br label %210

61:                                               ; preds = %47
  %62 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %63 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %61
  %71 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %72 = icmp ne %struct.snd_dmaengine_pcm_config* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %75 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %7, align 8
  %84 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %85 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, %struct.snd_dmaengine_pcm_config* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @dma_request_slave_channel(%struct.device* %83, i64 %90)
  %92 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %93 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %91, i64* %97, align 8
  br label %98

98:                                               ; preds = %82, %73, %70, %61
  %99 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %100 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %98
  %108 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %109 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_COMPAT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %116 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %117 = call i64 @dmaengine_pcm_compat_request_channel(%struct.snd_soc_pcm_runtime* %115, %struct.snd_pcm_substream* %116)
  %118 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %119 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  br label %124

124:                                              ; preds = %114, %107, %98
  %125 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %126 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %124
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %135 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %134, i32 0, i32 0
  %136 = load %struct.device*, %struct.device** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @dev_err(%struct.device* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %214

141:                                              ; preds = %124
  %142 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %143 = load i32, i32* @SNDRV_DMA_TYPE_DEV_IRAM, align 4
  %144 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %145 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %146 = call i32 @dmaengine_dma_dev(%struct.dmaengine_pcm* %144, %struct.snd_pcm_substream* %145)
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %142, i32 %143, i32 %146, i64 %147, i64 %148)
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %152 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @dmaengine_pcm_can_report_residue(%struct.device* %150, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %141
  %161 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_NO_RESIDUE, align 4
  %162 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %5, align 8
  %163 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %141
  %167 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %168 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %167, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %209

183:                                              ; preds = %166
  %184 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %185 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %197 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @strscpy_pad(i8* %195, i32 %207, i32 8)
  br label %209

209:                                              ; preds = %183, %166
  br label %210

210:                                              ; preds = %209, %60
  %211 = load i32, i32* %11, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %43

213:                                              ; preds = %43
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %213, %133
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component*) #1

declare dso_local i64 @dma_request_slave_channel(%struct.device*, i64) #1

declare dso_local i64 @dmaengine_pcm_compat_request_channel(%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i32, i64, i64) #1

declare dso_local i32 @dmaengine_dma_dev(%struct.dmaengine_pcm*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dmaengine_pcm_can_report_residue(%struct.device*, i64) #1

declare dso_local i32 @strscpy_pad(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
