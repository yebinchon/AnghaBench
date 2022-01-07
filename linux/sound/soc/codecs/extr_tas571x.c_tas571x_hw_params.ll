; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.tas571x_private = type { i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TAS571X_SDI_REG = common dso_local global i32 0, align 4
@TAS571X_SDI_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @tas571x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas571x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.tas571x_private*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tas571x_private* @snd_soc_component_get_drvdata(i32 %12)
  store %struct.tas571x_private* %13, %struct.tas571x_private** %8, align 8
  %14 = load %struct.tas571x_private*, %struct.tas571x_private** %8, align 8
  %15 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %22 [
    i32 128, label %19
    i32 130, label %20
    i32 129, label %21
  ]

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %25

20:                                               ; preds = %3
  store i32 3, i32* %9, align 4
  br label %25

21:                                               ; preds = %3
  store i32 6, i32* %9, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %21, %20, %19
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_width(%struct.snd_pcm_hw_params* %26)
  %28 = icmp sge i32 %27, 24
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %9, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_width(%struct.snd_pcm_hw_params* %33)
  %35 = icmp sge i32 %34, 20
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.tas571x_private*, %struct.tas571x_private** %8, align 8
  %42 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TAS571X_SDI_REG, align 4
  %45 = load i32, i32* @TAS571X_SDI_FMT_MASK, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %22
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.tas571x_private* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
