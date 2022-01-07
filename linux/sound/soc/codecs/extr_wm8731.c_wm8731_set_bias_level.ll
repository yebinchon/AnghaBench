; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8731.c_wm8731_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8731_priv = type { i32, i32, i32 }

@WM8731_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8731_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8731_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8731_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.wm8731_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.wm8731_priv* %10, %struct.wm8731_priv** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %87 [
    i32 130, label %12
    i32 129, label %28
    i32 128, label %29
    i32 131, label %61
  ]

12:                                               ; preds = %2
  %13 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %14 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %12
  br label %87

28:                                               ; preds = %2
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %31 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %30)
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %35 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %39 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_bulk_enable(i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %88

46:                                               ; preds = %33
  %47 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %48 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regcache_sync(i32 %49)
  br label %51

51:                                               ; preds = %46, %29
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %53 = load i32, i32* @WM8731_PWR, align 4
  %54 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %52, i32 %53)
  %55 = and i32 %54, 65407
  store i32 %55, i32* %8, align 4
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %57 = load i32, i32* @WM8731_PWR, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, 64
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %56, i32 %57, i32 %59)
  br label %87

61:                                               ; preds = %2
  %62 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %63 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %68 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_disable_unprepare(i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %73 = load i32, i32* @WM8731_PWR, align 4
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 65535)
  %75 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %76 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %80 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regulator_bulk_disable(i32 %78, i32 %81)
  %83 = load %struct.wm8731_priv*, %struct.wm8731_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regcache_mark_dirty(i32 %85)
  br label %87

87:                                               ; preds = %2, %71, %51, %28, %27
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %44, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.wm8731_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
