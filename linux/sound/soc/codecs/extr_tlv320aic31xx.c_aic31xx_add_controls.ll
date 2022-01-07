; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic31xx_priv = type { i32 }

@DAC31XX_BIT = common dso_local global i32 0, align 4
@aic31xx_snd_controls = common dso_local global i32 0, align 4
@AIC31XX_STEREO_CLASS_D_BIT = common dso_local global i32 0, align 4
@aic311x_snd_controls = common dso_local global i32 0, align 4
@aic310x_snd_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic31xx_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic31xx_add_controls(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aic31xx_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.aic31xx_priv* %7, %struct.aic31xx_priv** %5, align 8
  %8 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %5, align 8
  %9 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DAC31XX_BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @aic31xx_snd_controls, align 4
  %17 = load i32, i32* @aic31xx_snd_controls, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %15, i32 %16, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %20
  %26 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %5, align 8
  %27 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AIC31XX_STEREO_CLASS_D_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load i32, i32* @aic311x_snd_controls, align 4
  %35 = load i32, i32* @aic311x_snd_controls, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %33, i32 %34, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = load i32, i32* @aic310x_snd_controls, align 4
  %41 = load i32, i32* @aic310x_snd_controls, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %39, i32 %40, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
