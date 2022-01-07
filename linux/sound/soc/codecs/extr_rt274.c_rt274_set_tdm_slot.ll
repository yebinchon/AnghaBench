; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@RT274_I2S_CTRL1 = common dso_local global i32 0, align 4
@RT274_TDM_EN = common dso_local global i32 0, align 4
@RT274_TDM_DIS = common dso_local global i32 0, align 4
@RT274_TDM_CH_NUM = common dso_local global i32 0, align 4
@RT274_TDM_4CH = common dso_local global i32 0, align 4
@RT274_TDM_2CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Support 2 or 4 slots TDM only\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt274_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt274_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %5
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %23 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %24 = load i32, i32* @RT274_TDM_EN, align 4
  %25 = load i32, i32* @RT274_TDM_EN, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %22, i32 %23, i32 %24, i32 %25)
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %29 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %30 = load i32, i32* @RT274_TDM_EN, align 4
  %31 = load i32, i32* @RT274_TDM_DIS, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %55

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %47 [
    i32 4, label %35
    i32 2, label %41
  ]

35:                                               ; preds = %33
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %37 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %38 = load i32, i32* @RT274_TDM_CH_NUM, align 4
  %39 = load i32, i32* @RT274_TDM_4CH, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  br label %54

41:                                               ; preds = %33
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %43 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %44 = load i32, i32* @RT274_TDM_CH_NUM, align 4
  %45 = load i32, i32* @RT274_TDM_2CH, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %44, i32 %45)
  br label %54

47:                                               ; preds = %33
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %41, %35
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %47, %27
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
