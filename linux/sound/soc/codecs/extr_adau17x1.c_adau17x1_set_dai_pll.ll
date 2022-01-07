; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU17X1_PLL_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @adau17x1_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.adau*, align 8
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
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %19 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.adau* %19, %struct.adau** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %20, 8000000
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ugt i32 %23, 27000000
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %60

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.adau*, %struct.adau** %13, align 8
  %32 = getelementptr inbounds %struct.adau, %struct.adau* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @adau_calc_pll_cfg(i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %28
  %40 = load %struct.adau*, %struct.adau** %13, align 8
  %41 = getelementptr inbounds %struct.adau, %struct.adau* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ADAU17X1_PLL_CONTROL, align 4
  %44 = load %struct.adau*, %struct.adau** %13, align 8
  %45 = getelementptr inbounds %struct.adau, %struct.adau* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.adau*, %struct.adau** %13, align 8
  %48 = getelementptr inbounds %struct.adau, %struct.adau* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @regmap_raw_write(i32 %42, i32 %43, i32 %46, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %39
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.adau*, %struct.adau** %13, align 8
  %59 = getelementptr inbounds %struct.adau, %struct.adau* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %54, %37, %25
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @adau_calc_pll_cfg(i32, i32, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
