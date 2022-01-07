; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@RT5668_TDM_TX_CH_4 = common dso_local global i32 0, align 4
@RT5668_TDM_RX_CH_4 = common dso_local global i32 0, align 4
@RT5668_TDM_TX_CH_6 = common dso_local global i32 0, align 4
@RT5668_TDM_RX_CH_6 = common dso_local global i32 0, align 4
@RT5668_TDM_TX_CH_8 = common dso_local global i32 0, align 4
@RT5668_TDM_RX_CH_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RT5668_TDM_CTRL = common dso_local global i32 0, align 4
@RT5668_TDM_TX_CH_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_RX_CH_MASK = common dso_local global i32 0, align 4
@RT5668_TDM_CL_16 = common dso_local global i32 0, align 4
@RT5668_TDM_CL_20 = common dso_local global i32 0, align 4
@RT5668_TDM_CL_24 = common dso_local global i32 0, align 4
@RT5668_TDM_CL_32 = common dso_local global i32 0, align 4
@RT5668_TDM_TCON_CTRL = common dso_local global i32 0, align 4
@RT5668_TDM_CL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5668_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %40 [
    i32 4, label %18
    i32 6, label %25
    i32 8, label %32
    i32 2, label %39
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @RT5668_TDM_TX_CH_4, align 4
  %20 = load i32, i32* %13, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @RT5668_TDM_RX_CH_4, align 4
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  br label %43

25:                                               ; preds = %5
  %26 = load i32, i32* @RT5668_TDM_TX_CH_6, align 4
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @RT5668_TDM_RX_CH_6, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %43

32:                                               ; preds = %5
  %33 = load i32, i32* @RT5668_TDM_TX_CH_8, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @RT5668_TDM_RX_CH_8, align 4
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  br label %43

39:                                               ; preds = %5
  br label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %69

43:                                               ; preds = %39, %32, %25, %18
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %45 = load i32, i32* @RT5668_TDM_CTRL, align 4
  %46 = load i32, i32* @RT5668_TDM_TX_CH_MASK, align 4
  %47 = load i32, i32* @RT5668_TDM_RX_CH_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %60 [
    i32 16, label %52
    i32 20, label %54
    i32 24, label %56
    i32 32, label %58
  ]

52:                                               ; preds = %43
  %53 = load i32, i32* @RT5668_TDM_CL_16, align 4
  store i32 %53, i32* %13, align 4
  br label %63

54:                                               ; preds = %43
  %55 = load i32, i32* @RT5668_TDM_CL_20, align 4
  store i32 %55, i32* %13, align 4
  br label %63

56:                                               ; preds = %43
  %57 = load i32, i32* @RT5668_TDM_CL_24, align 4
  store i32 %57, i32* %13, align 4
  br label %63

58:                                               ; preds = %43
  %59 = load i32, i32* @RT5668_TDM_CL_32, align 4
  store i32 %59, i32* %13, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %69

63:                                               ; preds = %58, %56, %54, %52
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %65 = load i32, i32* @RT5668_TDM_TCON_CTRL, align 4
  %66 = load i32, i32* @RT5668_TDM_CL_MASK, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %60, %40
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
