; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sgtl5000_priv = type { i32 }

@SGTL5000_CHIP_ANA_POWER = common dso_local global i32 0, align 4
@SGTL5000_REFTOP_POWERUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @sgtl5000_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sgtl5000_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.sgtl5000_priv* %9, %struct.sgtl5000_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %43 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
    i32 131, label %34
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %13 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regcache_cache_only(i32 %14, i32 0)
  %16 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %17 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regcache_sync(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %24 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regcache_cache_only(i32 %25, i32 1)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %11
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %30 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %31 = load i32, i32* @SGTL5000_REFTOP_POWERUP, align 4
  %32 = load i32, i32* @SGTL5000_REFTOP_POWERUP, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %6, align 8
  %36 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regcache_cache_only(i32 %37, i32 1)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %40 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %41 = load i32, i32* @SGTL5000_REFTOP_POWERUP, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %2, %34, %28
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
