; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic31xx_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not reset device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to restore cache: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic31xx_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic31xx_power_on(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.aic31xx_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.aic31xx_priv* %7, %struct.aic31xx_priv** %4, align 8
  %8 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %9 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %13 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_bulk_enable(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %22 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regcache_cache_only(i32 %23, i32 0)
  %25 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %26 = call i32 @aic31xx_reset(%struct.aic31xx_priv* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %31 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %37 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regcache_sync(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %49 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regcache_cache_only(i32 %50, i32 1)
  %52 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %53 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %4, align 8
  %57 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regulator_bulk_disable(i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %42, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.aic31xx_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @aic31xx_reset(%struct.aic31xx_priv*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
