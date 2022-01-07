; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sta32x_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"level = %d\0A\00", align 1
@STA32X_CONFF = common dso_local global i32 0, align 4
@STA32X_CONFF_PWDN = common dso_local global i32 0, align 4
@STA32X_CONFF_EAPD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @sta32x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta32x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sta32x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.sta32x_priv* %9, %struct.sta32x_priv** %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %91 [
    i32 130, label %16
    i32 129, label %17
    i32 128, label %29
    i32 131, label %67
  ]

16:                                               ; preds = %2
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %19 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STA32X_CONFF, align 4
  %22 = load i32, i32* @STA32X_CONFF_PWDN, align 4
  %23 = load i32, i32* @STA32X_CONFF_EAPD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @STA32X_CONFF_PWDN, align 4
  %26 = load i32, i32* @STA32X_CONFF_EAPD, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %24, i32 %27)
  br label %91

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %31 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %30)
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %35 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %39 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_bulk_enable(i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %92

51:                                               ; preds = %33
  %52 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %53 = call i32 @sta32x_startup_sequence(%struct.sta32x_priv* %52)
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %55 = call i32 @sta32x_cache_sync(%struct.snd_soc_component* %54)
  %56 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %57 = call i32 @sta32x_watchdog_start(%struct.sta32x_priv* %56)
  br label %58

58:                                               ; preds = %51, %29
  %59 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %60 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @STA32X_CONFF, align 4
  %63 = load i32, i32* @STA32X_CONFF_PWDN, align 4
  %64 = load i32, i32* @STA32X_CONFF_EAPD, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %65, i32 0)
  br label %91

67:                                               ; preds = %2
  %68 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %69 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STA32X_CONFF, align 4
  %72 = load i32, i32* @STA32X_CONFF_PWDN, align 4
  %73 = load i32, i32* @STA32X_CONFF_EAPD, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %74, i32 0)
  %76 = call i32 @msleep(i32 300)
  %77 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %78 = call i32 @sta32x_watchdog_stop(%struct.sta32x_priv* %77)
  %79 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %80 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @gpiod_set_value(i32 %81, i32 0)
  %83 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %84 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = load %struct.sta32x_priv*, %struct.sta32x_priv** %7, align 8
  %88 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @regulator_bulk_disable(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %2, %67, %58, %17, %16
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %44
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sta32x_startup_sequence(%struct.sta32x_priv*) #1

declare dso_local i32 @sta32x_cache_sync(%struct.snd_soc_component*) #1

declare dso_local i32 @sta32x_watchdog_start(%struct.sta32x_priv*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sta32x_watchdog_stop(%struct.sta32x_priv*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
