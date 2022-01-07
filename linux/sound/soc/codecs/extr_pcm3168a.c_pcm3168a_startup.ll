; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm3168a_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@__const.pcm3168a_startup.channel_maxs = private unnamed_addr constant [2 x i32] [i32 8, i32 6], align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pcm3168a_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3168a_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.pcm3168a_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.pcm3168a_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.pcm3168a_priv* %14, %struct.pcm3168a_priv** %6, align 8
  %15 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.pcm3168a_startup.channel_maxs to i8*), i64 8, i1 false)
  %16 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %17 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %32 [
    i32 128, label %25
    i32 129, label %26
    i32 130, label %26
    i32 132, label %26
    i32 131, label %26
  ]

25:                                               ; preds = %2
  store i32 16, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %33

26:                                               ; preds = %2, %2, %2, %2
  store i32 24, i32* %7, align 4
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %33

32:                                               ; preds = %2
  store i32 24, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %26, %25
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @snd_pcm_hw_constraint_minmax(i32 %36, i32 %37, i32 %38, i32 32)
  %40 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %6, align 8
  %41 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %33
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @snd_pcm_hw_constraint_minmax(i32 %59, i32 %60, i32 2, i32 %61)
  ret i32 0
}

declare dso_local %struct.pcm3168a_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
