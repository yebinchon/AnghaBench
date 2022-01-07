; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_set_tdm_slot_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_set_tdm_slot_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SSI_NETWORK_DAC_SLOT_MASK = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_RXSLOT_MASK = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_SLOTS_2 = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_SLOTS_4 = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_SLOTS_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_RXSLOT_0_1 = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_RXSLOT_2_3 = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_RXSLOT_4_5 = common dso_local global i32 0, align 4
@SSI_NETWORK_DAC_RXSLOT_6_7 = common dso_local global i32 0, align 4
@MC13783_SSI_NETWORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @mc13783_set_tdm_slot_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_set_tdm_slot_dac(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @SSI_NETWORK_DAC_SLOT_MASK, align 4
  %19 = load i32, i32* @SSI_NETWORK_DAC_RXSLOT_MASK, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %34 [
    i32 2, label %22
    i32 4, label %26
    i32 8, label %30
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* @SSI_NETWORK_DAC_SLOTS_2, align 4
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  br label %37

26:                                               ; preds = %5
  %27 = load i32, i32* @SSI_NETWORK_DAC_SLOTS_4, align 4
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %13, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load i32, i32* @SSI_NETWORK_DAC_SLOTS_8, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %64

37:                                               ; preds = %30, %26, %22
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %55 [
    i32 3, label %39
    i32 12, label %43
    i32 48, label %47
    i32 192, label %51
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @SSI_NETWORK_DAC_RXSLOT_0_1, align 4
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %58

43:                                               ; preds = %37
  %44 = load i32, i32* @SSI_NETWORK_DAC_RXSLOT_2_3, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %58

47:                                               ; preds = %37
  %48 = load i32, i32* @SSI_NETWORK_DAC_RXSLOT_4_5, align 4
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %58

51:                                               ; preds = %37
  %52 = load i32, i32* @SSI_NETWORK_DAC_RXSLOT_6_7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %58

55:                                               ; preds = %37
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %64

58:                                               ; preds = %51, %47, %43, %39
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %60 = load i32, i32* @MC13783_SSI_NETWORK, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %59, i32 %60, i32 %61, i32 %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %58, %55, %34
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
