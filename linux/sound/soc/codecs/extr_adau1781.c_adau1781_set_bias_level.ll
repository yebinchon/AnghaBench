; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1781.c_adau1781_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1781.c_adau1781_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau = type { i32 }

@ADAU17X1_CLOCK_CONTROL = common dso_local global i32 0, align 4
@ADAU17X1_CLOCK_CONTROL_SYSCLK_EN = common dso_local global i32 0, align 4
@ADAU1781_DIG_PWDN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @adau1781_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1781_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adau*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.adau* %7, %struct.adau** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %36 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %11
    i32 131, label %24
  ]

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.adau*, %struct.adau** %5, align 8
  %13 = getelementptr inbounds %struct.adau, %struct.adau* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ADAU17X1_CLOCK_CONTROL, align 4
  %16 = load i32, i32* @ADAU17X1_CLOCK_CONTROL_SYSCLK_EN, align 4
  %17 = load i32, i32* @ADAU17X1_CLOCK_CONTROL_SYSCLK_EN, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.adau*, %struct.adau** %5, align 8
  %20 = getelementptr inbounds %struct.adau, %struct.adau* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ADAU1781_DIG_PWDN1, align 4
  %23 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 8, i32 8)
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.adau*, %struct.adau** %5, align 8
  %26 = getelementptr inbounds %struct.adau, %struct.adau* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ADAU1781_DIG_PWDN1, align 4
  %29 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 12, i32 0)
  %30 = load %struct.adau*, %struct.adau** %5, align 8
  %31 = getelementptr inbounds %struct.adau, %struct.adau* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ADAU17X1_CLOCK_CONTROL, align 4
  %34 = load i32, i32* @ADAU17X1_CLOCK_CONTROL_SYSCLK_EN, align 4
  %35 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %2, %24, %11, %10, %9
  ret i32 0
}

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
