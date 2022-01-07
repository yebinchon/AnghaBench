; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.adav80x = type { i32, i32, i32*, i32 }
%struct.snd_soc_dapm_context = type { i32 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAV80X_ICLK_CTRL1 = common dso_local global i32 0, align 4
@ADAV80X_ICLK_CTRL2 = common dso_local global i32 0, align 4
@ADAV80X_PLL_OUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PLL1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PLL2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @adav80x_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adav80x*, align 8
  %13 = alloca %struct.snd_soc_dapm_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.adav80x* %18, %struct.adav80x** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %19)
  store %struct.snd_soc_dapm_context* %20, %struct.snd_soc_dapm_context** %13, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %27 [
    i32 129, label %26
    i32 128, label %26
    i32 135, label %26
    i32 134, label %26
    i32 133, label %26
  ]

26:                                               ; preds = %24, %24, %24, %24, %24
  br label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %153

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %33 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %35 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %42 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 129, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ADAV80X_ICLK_CTRL1_DAC_SRC(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ADAV80X_ICLK_CTRL1_ADC_SRC(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ADAV80X_ICLK_CTRL1_ICLK2_SRC(i32 %52)
  %54 = or i32 %51, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ADAV80X_ICLK_CTRL2_ICLK1_SRC(i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %58 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ADAV80X_ICLK_CTRL1, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @regmap_write(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %64 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ADAV80X_ICLK_CTRL2, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @regmap_write(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %70 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %69)
  br label %71

71:                                               ; preds = %46, %30
  br label %152

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4
  switch i32 %73, label %75 [
    i32 132, label %74
    i32 131, label %74
    i32 130, label %74
  ]

74:                                               ; preds = %72, %72, %72
  br label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %153

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 132
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ADAV80X_PLL_OUTE_SYSCLKPD(i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %87 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ADAV80X_PLL_OUTE, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %94 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 1, i32* %98, align 4
  br label %112

99:                                               ; preds = %78
  %100 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %101 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ADAV80X_PLL_OUTE, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @regmap_update_bits(i32 %102, i32 %103, i32 %104, i32 0)
  %106 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %107 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %99, %85
  %113 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %114 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %113)
  %115 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %116 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %123 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %127

124:                                              ; preds = %112
  %125 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %126 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %129 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.adav80x*, %struct.adav80x** %12, align 8
  %136 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134, %127
  %142 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %143 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %147

144:                                              ; preds = %134
  %145 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %146 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %149 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %148)
  %150 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %151 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %150)
  br label %152

152:                                              ; preds = %147, %71
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %75, %27
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @ADAV80X_ICLK_CTRL1_DAC_SRC(i32) #1

declare dso_local i32 @ADAV80X_ICLK_CTRL1_ADC_SRC(i32) #1

declare dso_local i32 @ADAV80X_ICLK_CTRL1_ICLK2_SRC(i32) #1

declare dso_local i32 @ADAV80X_ICLK_CTRL2_ICLK1_SRC(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @ADAV80X_PLL_OUTE_SYSCLKPD(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
