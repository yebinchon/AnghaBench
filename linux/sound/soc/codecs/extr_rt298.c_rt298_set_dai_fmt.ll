; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT298_I2S_CTRL1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT298_DAC_FORMAT = common dso_local global i32 0, align 4
@RT298_ADC_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt298_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt298_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %21 [
    i32 133, label %13
    i32 132, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 2048, i32 2048)
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 2048, i32 0)
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %17, %13
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %44 [
    i32 129, label %28
    i32 128, label %32
    i32 131, label %36
    i32 130, label %40
  ]

28:                                               ; preds = %24
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %30 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 768, i32 0)
  br label %47

32:                                               ; preds = %24
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 768, i32 256)
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %38 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 768, i32 512)
  br label %47

40:                                               ; preds = %24
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %42 = load i32, i32* @RT298_I2S_CTRL1, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 768, i32 768)
  br label %47

44:                                               ; preds = %24
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %40, %36, %32, %28
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %49 = load i32, i32* @RT298_DAC_FORMAT, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 32768, i32 0)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %52 = load i32, i32* @RT298_ADC_FORMAT, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 32768, i32 0)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %44, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
