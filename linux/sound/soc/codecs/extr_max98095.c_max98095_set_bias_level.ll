; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@M98095_090_PWR_EN_IN = common dso_local global i32 0, align 4
@M98095_MBEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @max98095_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max98095_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.max98095_priv* %9, %struct.max98095_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %73 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %39
    i32 131, label %64
  ]

11:                                               ; preds = %2
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.max98095_priv*, %struct.max98095_priv** %6, align 8
  %14 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %73

19:                                               ; preds = %12
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %20)
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.max98095_priv*, %struct.max98095_priv** %6, align 8
  %25 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.max98095_priv*, %struct.max98095_priv** %6, align 8
  %30 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23
  br label %73

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %41 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %40)
  %42 = icmp eq i32 %41, 131
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.max98095_priv*, %struct.max98095_priv** %6, align 8
  %45 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regcache_sync(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %60 = load i32, i32* @M98095_090_PWR_EN_IN, align 4
  %61 = load i32, i32* @M98095_MBEN, align 4
  %62 = load i32, i32* @M98095_MBEN, align 4
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %59, i32 %60, i32 %61, i32 %62)
  br label %73

64:                                               ; preds = %2
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %66 = load i32, i32* @M98095_090_PWR_EN_IN, align 4
  %67 = load i32, i32* @M98095_MBEN, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.max98095_priv*, %struct.max98095_priv** %6, align 8
  %70 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regcache_mark_dirty(i32 %71)
  br label %73

73:                                               ; preds = %2, %64, %58, %38, %18, %11
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %50, %35
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
