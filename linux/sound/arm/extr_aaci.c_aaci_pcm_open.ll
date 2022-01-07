; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.aaci* }
%struct.snd_pcm_runtime = type { %struct.TYPE_8__, %struct.aaci_runtime* }
%struct.aaci_runtime = type { %struct.TYPE_6__*, %struct.snd_pcm_substream* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.aaci = type { i32, i32, i32, %struct.TYPE_7__*, %struct.aaci_runtime, %struct.aaci_runtime }
%struct.TYPE_7__ = type { i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@aaci_hw_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@aaci_rule_channels = common dso_local global i32 0, align 4
@aaci_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @aaci_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.aaci*, align 8
  %6 = alloca %struct.aaci_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.aaci*, %struct.aaci** %12, align 8
  store %struct.aaci* %13, %struct.aaci** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.aaci*, %struct.aaci** %5, align 8
  %21 = getelementptr inbounds %struct.aaci, %struct.aaci* %20, i32 0, i32 5
  store %struct.aaci_runtime* %21, %struct.aaci_runtime** %6, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.aaci*, %struct.aaci** %5, align 8
  %24 = getelementptr inbounds %struct.aaci, %struct.aaci* %23, i32 0, i32 4
  store %struct.aaci_runtime* %24, %struct.aaci_runtime** %6, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %27, i32 0, i32 1
  store %struct.snd_pcm_substream* %26, %struct.snd_pcm_substream** %28, align 8
  %29 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  store %struct.aaci_runtime* %29, %struct.aaci_runtime** %31, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = bitcast %struct.TYPE_8__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 bitcast (%struct.TYPE_8__* @aaci_hw_info to i8*), i64 12, i1 false)
  %35 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %36 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %44 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %43)
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %25
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 6, i32* %53, align 8
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 1
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %55, align 8
  %57 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %58 = load i32, i32* @aaci_rule_channels, align 4
  %59 = load %struct.aaci*, %struct.aaci** %5, align 8
  %60 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %61 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %56, i32 0, i32 %57, i32 %58, %struct.aaci* %59, i32 %60, i32 -1)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %122

66:                                               ; preds = %50
  %67 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %78 = call i32 @snd_ac97_pcm_double_rate_rules(%struct.snd_pcm_runtime* %77)
  br label %79

79:                                               ; preds = %76, %66
  br label %80

80:                                               ; preds = %79, %25
  %81 = load %struct.aaci*, %struct.aaci** %5, align 8
  %82 = getelementptr inbounds %struct.aaci, %struct.aaci* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 2
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.aaci*, %struct.aaci** %5, align 8
  %89 = getelementptr inbounds %struct.aaci, %struct.aaci* %88, i32 0, i32 1
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.aaci*, %struct.aaci** %5, align 8
  %92 = getelementptr inbounds %struct.aaci, %struct.aaci* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %80
  %97 = load %struct.aaci*, %struct.aaci** %5, align 8
  %98 = getelementptr inbounds %struct.aaci, %struct.aaci* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @aaci_irq, align 4
  %105 = load i32, i32* @IRQF_SHARED, align 4
  %106 = load i32, i32* @DRIVER_NAME, align 4
  %107 = load %struct.aaci*, %struct.aaci** %5, align 8
  %108 = call i32 @request_irq(i32 %103, i32 %104, i32 %105, i32 %106, %struct.aaci* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %96
  %112 = load %struct.aaci*, %struct.aaci** %5, align 8
  %113 = getelementptr inbounds %struct.aaci, %struct.aaci* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %96
  br label %117

117:                                              ; preds = %116, %80
  %118 = load %struct.aaci*, %struct.aaci** %5, align 8
  %119 = getelementptr inbounds %struct.aaci, %struct.aaci* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %64
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #2

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.aaci*, i32, i32) #2

declare dso_local i32 @snd_ac97_pcm_double_rate_rules(%struct.snd_pcm_runtime*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.aaci*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
