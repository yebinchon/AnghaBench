; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs42l42_private = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulators: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs42l42_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs42l42_private*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.cs42l42_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs42l42_private* %9, %struct.cs42l42_private** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %58 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
    i32 131, label %45
  ]

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %14)
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %19 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regcache_cache_only(i32 %20, i32 0)
  %22 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %23 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regcache_sync(i32 %24)
  %26 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %27 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %31 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_bulk_enable(i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %13
  br label %58

45:                                               ; preds = %2
  %46 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %47 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regcache_cache_only(i32 %48, i32 1)
  %50 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %51 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %55 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regulator_bulk_disable(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %2, %45, %44, %12, %11
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.cs42l42_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
