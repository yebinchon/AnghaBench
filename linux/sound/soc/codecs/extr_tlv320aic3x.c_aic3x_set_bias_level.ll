; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32, i32 }

@AIC3X_PLL_PROGA_REG = common dso_local global i32 0, align 4
@PLL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @aic3x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aic3x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.aic3x_priv* %7, %struct.aic3x_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %58 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %26
    i32 131, label %49
  ]

9:                                                ; preds = %2
  br label %58

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %11)
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %16 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %22 = load i32, i32* @PLL_ENABLE, align 4
  %23 = load i32, i32* @PLL_ENABLE, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %14, %10
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %28 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = call i32 @aic3x_set_power(%struct.snd_soc_component* %32, i32 1)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %35)
  %37 = icmp eq i32 %36, 129
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %40 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %46 = load i32, i32* @PLL_ENABLE, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %43, %38, %34
  br label %58

49:                                               ; preds = %2
  %50 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %51 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = call i32 @aic3x_set_power(%struct.snd_soc_component* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %2, %57, %48, %25, %9
  ret i32 0
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @aic3x_set_power(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
