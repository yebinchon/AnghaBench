; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.twl4030_priv = type { %struct.snd_pcm_substream*, i64, %struct.snd_pcm_substream* }

@TWL4030_REG_CODEC_MODE = common dso_local global i32 0, align 4
@TWL4030_OPTION_1 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @twl4030_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.twl4030_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.twl4030_priv* %11, %struct.twl4030_priv** %6, align 8
  %12 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %13 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %15 = icmp ne %struct.snd_pcm_substream* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %19 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %18, i32 0, i32 2
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %19, align 8
  %20 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %21 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %26 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %27 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %27, align 8
  %29 = call i32 @twl4030_constraints(%struct.twl4030_priv* %25, %struct.snd_pcm_substream* %28)
  br label %30

30:                                               ; preds = %24, %16
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %33 = load i32, i32* @TWL4030_REG_CODEC_MODE, align 4
  %34 = call i32 @twl4030_read(%struct.snd_soc_component* %32, i32 %33)
  %35 = load i32, i32* @TWL4030_OPTION_1, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %43 = call i32 @snd_pcm_hw_constraint_single(i32 %41, i32 %42, i32 2)
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %46 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %47 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %46, i32 0, i32 0
  store %struct.snd_pcm_substream* %45, %struct.snd_pcm_substream** %47, align 8
  br label %48

48:                                               ; preds = %44, %30
  ret i32 0
}

declare dso_local %struct.twl4030_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @twl4030_constraints(%struct.twl4030_priv*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @twl4030_read(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_single(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
