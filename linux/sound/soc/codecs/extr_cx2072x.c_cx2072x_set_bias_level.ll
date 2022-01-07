; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cx2072x_priv = type { i32 }

@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@CX2072X_AFG_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cx2072x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx2072x_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.cx2072x_priv* %8, %struct.cx2072x_priv** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %5, align 8
  %20 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CX2072X_AFG_POWER_STATE, align 4
  %23 = call i32 @regmap_write(i32 %21, i32 %22, i32 0)
  br label %39

24:                                               ; preds = %14, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %5, align 8
  %34 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CX2072X_AFG_POWER_STATE, align 4
  %37 = call i32 @regmap_write(i32 %35, i32 %36, i32 3)
  br label %38

38:                                               ; preds = %32, %28, %24
  br label %39

39:                                               ; preds = %38, %18
  ret i32 0
}

declare dso_local %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
