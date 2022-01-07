; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8770.c_wm8770_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8770_priv = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8770_PWDNCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8770_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8770_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8770_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.wm8770_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8770_priv* %9, %struct.wm8770_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %56 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
    i32 131, label %44
  ]

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %14)
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.wm8770_priv*, %struct.wm8770_priv** %7, align 8
  %19 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load %struct.wm8770_priv*, %struct.wm8770_priv** %7, align 8
  %23 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_bulk_enable(i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %17
  %36 = load %struct.wm8770_priv*, %struct.wm8770_priv** %7, align 8
  %37 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regcache_sync(i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = load i32, i32* @WM8770_PWDNCTRL, align 4
  %42 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %35, %13
  br label %56

44:                                               ; preds = %2
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = load i32, i32* @WM8770_PWDNCTRL, align 4
  %47 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %45, i32 %46, i32 1)
  %48 = load %struct.wm8770_priv*, %struct.wm8770_priv** %7, align 8
  %49 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.wm8770_priv*, %struct.wm8770_priv** %7, align 8
  %53 = getelementptr inbounds %struct.wm8770_priv, %struct.wm8770_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regulator_bulk_disable(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %2, %44, %43, %12, %11
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.wm8770_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
