; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tas2552_data = type { i64, i64 }

@SND_SOC_DAIFMT_DSP_A = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_DSP_B = common dso_local global i64 0, align 8
@TAS2552_SER_CTRL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @tas2552_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas2552_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.tas2552_data*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.tas2552_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.tas2552_data* %12, %struct.tas2552_data** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %14 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SND_SOC_DAIFMT_DSP_A, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %20 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %29 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SND_SOC_DAIFMT_DSP_B, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.tas2552_data*, %struct.tas2552_data** %6, align 8
  %35 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %44 = load i32, i32* @TAS2552_SER_CTRL_2, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %45)
  ret i32 0
}

declare dso_local %struct.tas2552_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
