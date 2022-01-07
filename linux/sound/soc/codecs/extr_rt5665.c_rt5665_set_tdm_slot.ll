; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@RT5665_I2S1_MODE_TDM = common dso_local global i32 0, align 4
@RT5665_TDM_IN_CH_4 = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_CH_4 = common dso_local global i32 0, align 4
@RT5665_TDM_IN_CH_6 = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_CH_6 = common dso_local global i32 0, align 4
@RT5665_TDM_IN_CH_8 = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_CH_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RT5665_TDM_IN_LEN_20 = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_LEN_20 = common dso_local global i32 0, align 4
@RT5665_TDM_IN_LEN_24 = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_LEN_24 = common dso_local global i32 0, align 4
@RT5665_TDM_IN_LEN_32 = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_LEN_32 = common dso_local global i32 0, align 4
@RT5665_TDM_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_I2S1_MODE_MASK = common dso_local global i32 0, align 4
@RT5665_TDM_IN_CH_MASK = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_CH_MASK = common dso_local global i32 0, align 4
@RT5665_TDM_IN_LEN_MASK = common dso_local global i32 0, align 4
@RT5665_TDM_OUT_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5665_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @RT5665_I2S1_MODE_TDM, align 4
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %50 [
    i32 4, label %28
    i32 6, label %35
    i32 8, label %42
    i32 2, label %49
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @RT5665_TDM_IN_CH_4, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @RT5665_TDM_OUT_CH_4, align 4
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  br label %53

35:                                               ; preds = %26
  %36 = load i32, i32* @RT5665_TDM_IN_CH_6, align 4
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @RT5665_TDM_OUT_CH_6, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %53

42:                                               ; preds = %26
  %43 = load i32, i32* @RT5665_TDM_IN_CH_8, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @RT5665_TDM_OUT_CH_8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %53

49:                                               ; preds = %26
  br label %53

50:                                               ; preds = %26
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %94

53:                                               ; preds = %49, %42, %35, %28
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %77 [
    i32 20, label %55
    i32 24, label %62
    i32 32, label %69
    i32 16, label %76
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @RT5665_TDM_IN_LEN_20, align 4
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @RT5665_TDM_OUT_LEN_20, align 4
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %80

62:                                               ; preds = %53
  %63 = load i32, i32* @RT5665_TDM_IN_LEN_24, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @RT5665_TDM_OUT_LEN_24, align 4
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %80

69:                                               ; preds = %53
  %70 = load i32, i32* @RT5665_TDM_IN_LEN_32, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @RT5665_TDM_OUT_LEN_32, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %80

76:                                               ; preds = %53
  br label %80

77:                                               ; preds = %53
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %94

80:                                               ; preds = %76, %69, %62, %55
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %82 = load i32, i32* @RT5665_TDM_CTRL_1, align 4
  %83 = load i32, i32* @RT5665_I2S1_MODE_MASK, align 4
  %84 = load i32, i32* @RT5665_TDM_IN_CH_MASK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RT5665_TDM_OUT_CH_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RT5665_TDM_IN_LEN_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RT5665_TDM_OUT_LEN_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %91, i32 %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %80, %77, %50
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
