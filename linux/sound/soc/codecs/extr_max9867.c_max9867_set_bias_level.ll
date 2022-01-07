; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max9867_priv = type { i32 }

@MAX9867_PWRMAN = common dso_local global i32 0, align 4
@MAX9867_SHTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @max9867_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9867_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.max9867_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.max9867_priv* %9, %struct.max9867_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %54 [
    i32 128, label %11
    i32 129, label %38
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %12)
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %17 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regcache_sync(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %26 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX9867_PWRMAN, align 4
  %29 = load i32, i32* @MAX9867_SHTDOWN, align 4
  %30 = load i32, i32* @MAX9867_SHTDOWN, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %56

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %11
  br label %55

38:                                               ; preds = %2
  %39 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %40 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX9867_PWRMAN, align 4
  %43 = load i32, i32* @MAX9867_SHTDOWN, align 4
  %44 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %38
  %50 = load %struct.max9867_priv*, %struct.max9867_priv** %7, align 8
  %51 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regcache_mark_dirty(i32 %52)
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %49, %37
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47, %34, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
