; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_find_amic_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_find_amic_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WCD9335_MAX_VALID_ADC_MUX = common dso_local global i32 0, align 4
@WCD9335_INVALID_ADC_MUX = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_INP_MUX_ADC_MUX0_CFG1 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_INP_MUX_ADC_MUX0_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_INP_MUX_ADC_MUX4_CFG0 = common dso_local global i32 0, align 4
@WCD9335_CDC_TX_INP_MUX_SEL_AMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wcd9335_codec_find_amic_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_codec_find_amic_input(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @WCD9335_MAX_VALID_ADC_MUX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WCD9335_INVALID_ADC_MUX, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11, %2
  store i32 0, i32* %3, align 4
  br label %56

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* @WCD9335_CDC_TX_INP_MUX_ADC_MUX0_CFG1, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @WCD9335_CDC_TX_INP_MUX_ADC_MUX0_CFG0, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %32, i32 %33)
  %35 = and i32 %34, 3
  store i32 %35, i32* %6, align 4
  br label %46

36:                                               ; preds = %20
  %37 = load i32, i32* @WCD9335_CDC_TX_INP_MUX_ADC_MUX4_CFG0, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %42, i32 %43)
  %45 = ashr i32 %44, 6
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %23
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WCD9335_CDC_TX_INP_MUX_SEL_AMIC, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %46
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %52, i32 %53)
  %55 = and i32 %54, 7
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %50, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
