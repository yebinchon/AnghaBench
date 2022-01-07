; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32 }

@DAC33_INT_OSC_CTRL = common dso_local global i32 0, align 4
@DAC33_ASRC_CTRL_B = common dso_local global i32 0, align 4
@DAC33_REFSEL = common dso_local global i32 0, align 4
@DAC33_SRCREFSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock ID (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @dac33_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.tlv320dac33_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %9, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %17 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.tlv320dac33_priv* %17, %struct.tlv320dac33_priv** %10, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %19 = load i32, i32* @DAC33_INT_OSC_CTRL, align 4
  %20 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %22 = load i32, i32* @DAC33_ASRC_CTRL_B, align 4
  %23 = call i32 @dac33_read_reg_cache(%struct.snd_soc_component* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %41 [
    i32 129, label %25
    i32 128, label %32
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @DAC33_REFSEL, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @DAC33_SRCREFSEL, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %47

32:                                               ; preds = %4
  %33 = load i32, i32* @DAC33_REFSEL, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @DAC33_SRCREFSEL, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %12, align 4
  br label %47

41:                                               ; preds = %4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %32, %25
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %10, align 8
  %50 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %52 = load i32, i32* @DAC33_INT_OSC_CTRL, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dac33_write_reg_cache(%struct.snd_soc_component* %51, i32 %52, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %56 = load i32, i32* @DAC33_ASRC_CTRL_B, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @dac33_write_reg_cache(%struct.snd_soc_component* %55, i32 %56, i32 %57)
  ret i32 0
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dac33_read_reg_cache(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dac33_write_reg_cache(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
