; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adau1977 = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1977_SYSCLK = common dso_local global i32 0, align 4
@ADAU1977_PLL_CLK_S = common dso_local global i32 0, align 4
@ADAU1977_RATE_CONSTRAINT_MASK_32000 = common dso_local global i32 0, align 4
@ADAU1977_RATE_CONSTRAINT_MASK_44100 = common dso_local global i32 0, align 4
@ADAU1977_RATE_CONSTRAINT_MASK_48000 = common dso_local global i32 0, align 4
@ADAU1977_RATE_CONSTRAINT_MASK_LRCLK = common dso_local global i32 0, align 4
@ADAU1977_REG_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @adau1977_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adau1977*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = call %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.adau1977* %17, %struct.adau1977** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %114

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ADAU1977_SYSCLK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %114

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %36 [
    i32 128, label %33
    i32 129, label %34
  ]

33:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @ADAU1977_PLL_CLK_S, align 4
  store i32 %35, i32* %14, align 4
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %114

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ult i32 %46, 4000000
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp ugt i32 %49, 36864000
  br i1 %50, label %51, label %54

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %114

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @adau1977_check_sysclk(i32 %55, i32 32000)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @ADAU1977_RATE_CONSTRAINT_MASK_32000, align 4
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @adau1977_check_sysclk(i32 %63, i32 44100)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @ADAU1977_RATE_CONSTRAINT_MASK_44100, align 4
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @adau1977_check_sysclk(i32 %71, i32 48000)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @ADAU1977_RATE_CONSTRAINT_MASK_48000, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %114

84:                                               ; preds = %78
  br label %91

85:                                               ; preds = %42, %39
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @ADAU1977_RATE_CONSTRAINT_MASK_LRCLK, align 4
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %84
  %92 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %93 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ADAU1977_REG_PLL, align 4
  %96 = load i32, i32* @ADAU1977_PLL_CLK_S, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %114

103:                                              ; preds = %91
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %106 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %110 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %113 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %103, %101, %81, %51, %36, %28, %21
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @adau1977_check_sysclk(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
