; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_rt5631_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5631.c_rt5631_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5631_priv = type { i32 }

@RT5631_PWR_MANAG_ADD2 = common dso_local global i32 0, align 4
@RT5631_PWR_MICBIAS1_VOL = common dso_local global i32 0, align 4
@RT5631_PWR_MICBIAS2_VOL = common dso_local global i32 0, align 4
@RT5631_PWR_MANAG_ADD3 = common dso_local global i32 0, align 4
@RT5631_PWR_VREF = common dso_local global i32 0, align 4
@RT5631_PWR_MAIN_BIAS = common dso_local global i32 0, align 4
@RT5631_PWR_FAST_VREF_CTRL = common dso_local global i32 0, align 4
@RT5631_PWR_MANAG_ADD1 = common dso_local global i32 0, align 4
@RT5631_PWR_MANAG_ADD4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5631_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5631_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5631_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5631_priv* %7, %struct.rt5631_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %61 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %19
    i32 131, label %48
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @RT5631_PWR_MANAG_ADD2, align 4
  %12 = load i32, i32* @RT5631_PWR_MICBIAS1_VOL, align 4
  %13 = load i32, i32* @RT5631_PWR_MICBIAS2_VOL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RT5631_PWR_MICBIAS1_VOL, align 4
  %16 = load i32, i32* @RT5631_PWR_MICBIAS2_VOL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %14, i32 %17)
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %20)
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %25 = load i32, i32* @RT5631_PWR_MANAG_ADD3, align 4
  %26 = load i32, i32* @RT5631_PWR_VREF, align 4
  %27 = load i32, i32* @RT5631_PWR_MAIN_BIAS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RT5631_PWR_VREF, align 4
  %30 = load i32, i32* @RT5631_PWR_MAIN_BIAS, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %28, i32 %31)
  %33 = call i32 @msleep(i32 80)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @RT5631_PWR_MANAG_ADD3, align 4
  %36 = load i32, i32* @RT5631_PWR_FAST_VREF_CTRL, align 4
  %37 = load i32, i32* @RT5631_PWR_FAST_VREF_CTRL, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.rt5631_priv*, %struct.rt5631_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regcache_cache_only(i32 %41, i32 0)
  %43 = load %struct.rt5631_priv*, %struct.rt5631_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rt5631_priv, %struct.rt5631_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regcache_sync(i32 %45)
  br label %47

47:                                               ; preds = %23, %19
  br label %62

48:                                               ; preds = %2
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load i32, i32* @RT5631_PWR_MANAG_ADD1, align 4
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 0)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = load i32, i32* @RT5631_PWR_MANAG_ADD2, align 4
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %52, i32 %53, i32 0)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* @RT5631_PWR_MANAG_ADD3, align 4
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 0)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %59 = load i32, i32* @RT5631_PWR_MANAG_ADD4, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i32 %59, i32 0)
  br label %62

61:                                               ; preds = %2
  br label %62

62:                                               ; preds = %61, %48, %47, %9
  ret i32 0
}

declare dso_local %struct.rt5631_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
