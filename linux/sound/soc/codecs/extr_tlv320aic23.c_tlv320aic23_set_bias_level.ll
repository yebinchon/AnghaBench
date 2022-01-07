; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@TLV320AIC23_PWR = common dso_local global i32 0, align 4
@TLV320AIC23_DEVICE_PWR_OFF = common dso_local global i32 0, align 4
@TLV320AIC23_OSC_OFF = common dso_local global i32 0, align 4
@TLV320AIC23_DAC_OFF = common dso_local global i32 0, align 4
@TLV320AIC23_CLK_OFF = common dso_local global i32 0, align 4
@TLV320AIC23_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @tlv320aic23_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = load i32, i32* @TLV320AIC23_PWR, align 4
  %8 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %6, i32 %7)
  %9 = and i32 %8, 383
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %39 [
    i32 130, label %11
    i32 129, label %24
    i32 128, label %25
    i32 131, label %32
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @TLV320AIC23_DEVICE_PWR_OFF, align 4
  %13 = load i32, i32* @TLV320AIC23_OSC_OFF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TLV320AIC23_DAC_OFF, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @TLV320AIC23_PWR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 %22)
  br label %39

24:                                               ; preds = %2
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @TLV320AIC23_PWR, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TLV320AIC23_CLK_OFF, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 %30)
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @TLV320AIC23_ACTIVE, align 4
  %35 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %33, i32 %34, i32 0)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @TLV320AIC23_PWR, align 4
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 511)
  br label %39

39:                                               ; preds = %2, %32, %25, %24, %11
  ret i32 0
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
