; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { i32, i32 }

@M98088_REG_4C_PWR_EN_IN = common dso_local global i32 0, align 4
@M98088_MBEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @max98088_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max98088_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.max98088_priv* %7, %struct.max98088_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %56 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %32
    i32 131, label %47
  ]

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load %struct.max98088_priv*, %struct.max98088_priv** %5, align 8
  %12 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IS_ERR(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %17)
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.max98088_priv*, %struct.max98088_priv** %5, align 8
  %22 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.max98088_priv*, %struct.max98088_priv** %5, align 8
  %27 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_prepare_enable(i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  br label %31

31:                                               ; preds = %30, %10
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %33)
  %35 = icmp eq i32 %34, 131
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.max98088_priv*, %struct.max98088_priv** %5, align 8
  %38 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regcache_sync(i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @M98088_REG_4C_PWR_EN_IN, align 4
  %44 = load i32, i32* @M98088_MBEN, align 4
  %45 = load i32, i32* @M98088_MBEN, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %44, i32 %45)
  br label %56

47:                                               ; preds = %2
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @M98088_REG_4C_PWR_EN_IN, align 4
  %50 = load i32, i32* @M98088_MBEN, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.max98088_priv*, %struct.max98088_priv** %5, align 8
  %53 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regcache_mark_dirty(i32 %54)
  br label %56

56:                                               ; preds = %2, %47, %41, %31, %9
  ret i32 0
}

declare dso_local %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
