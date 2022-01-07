; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs42l56_private = type { i32, i32, i32 }

@CS42L56_CLKCTL_1 = common dso_local global i32 0, align 4
@CS42L56_MCLK_DIS_MASK = common dso_local global i32 0, align 4
@CS42L56_PWRCTL_1 = common dso_local global i32 0, align 4
@CS42L56_PDN_ALL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs42l56_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs42l56_private*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs42l56_private* %9, %struct.cs42l56_private** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %78 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %21
    i32 131, label %57
  ]

11:                                               ; preds = %2
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = load i32, i32* @CS42L56_CLKCTL_1, align 4
  %15 = load i32, i32* @CS42L56_MCLK_DIS_MASK, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = load i32, i32* @CS42L56_PWRCTL_1, align 4
  %19 = load i32, i32* @CS42L56_PDN_ALL_MASK, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 0)
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %22)
  %24 = icmp eq i32 %23, 131
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %27 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regcache_cache_only(i32 %28, i32 0)
  %30 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %31 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regcache_sync(i32 %32)
  %34 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %35 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %39 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_bulk_enable(i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %25
  %45 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %46 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %79

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %21
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %54 = load i32, i32* @CS42L56_PWRCTL_1, align 4
  %55 = load i32, i32* @CS42L56_PDN_ALL_MASK, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %55, i32 1)
  br label %78

57:                                               ; preds = %2
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %59 = load i32, i32* @CS42L56_PWRCTL_1, align 4
  %60 = load i32, i32* @CS42L56_PDN_ALL_MASK, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 1)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %63 = load i32, i32* @CS42L56_CLKCTL_1, align 4
  %64 = load i32, i32* @CS42L56_MCLK_DIS_MASK, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 1)
  %66 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %67 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regcache_cache_only(i32 %68, i32 1)
  %70 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %71 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = load %struct.cs42l56_private*, %struct.cs42l56_private** %6, align 8
  %75 = getelementptr inbounds %struct.cs42l56_private, %struct.cs42l56_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @regulator_bulk_disable(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %2, %57, %52, %12, %11
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.cs42l56_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
