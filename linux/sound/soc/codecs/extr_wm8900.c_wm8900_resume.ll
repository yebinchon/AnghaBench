; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8900_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to restore cache: %d\0A\00", align 1
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to restart FLL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8900_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_resume(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8900_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm8900_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8900_priv* %9, %struct.wm8900_priv** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call i32 @wm8900_reset(%struct.snd_soc_component* %10)
  %12 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %13 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regcache_sync(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %28 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %26, i32 %27)
  %29 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %30 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %35 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %38 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %41 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.wm8900_priv*, %struct.wm8900_priv** %4, align 8
  %43 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @wm8900_set_fll(%struct.snd_soc_component* %44, i32 0, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56, %25
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %50, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.wm8900_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8900_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8900_set_fll(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
