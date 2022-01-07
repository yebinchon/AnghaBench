; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.es8328_priv = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unable to enable regulators\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"codec clock missing or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to prepare codec clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @es8328_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.es8328_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.es8328_priv* %7, %struct.es8328_priv** %4, align 8
  %8 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %9 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %13 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_bulk_enable(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @devm_clk_get(i32 %27, i32* null)
  %29 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %30 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %32 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %42 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %58

45:                                               ; preds = %24
  %46 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %47 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %58

57:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %68

58:                                               ; preds = %52, %36
  %59 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %60 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load %struct.es8328_priv*, %struct.es8328_priv** %4, align 8
  %64 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regulator_bulk_disable(i32 %62, i32 %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %58, %57, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_clk_get(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
