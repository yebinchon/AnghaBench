; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.es8316_priv = type { i32, %struct.snd_soc_component* }

@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unable to get mclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"assuming static mclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unable to enable mclk\0A\00", align 1
@ES8316_RESET = common dso_local global i32 0, align 4
@ES8316_RESET_CSM_ON = common dso_local global i32 0, align 4
@ES8316_SYS_VMIDSEL = common dso_local global i32 0, align 4
@ES8316_CLKMGR_ADCOSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @es8316_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8316_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.es8316_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.es8316_priv* %7, %struct.es8316_priv** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.es8316_priv*, %struct.es8316_priv** %4, align 8
  %10 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %9, i32 0, i32 1
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %10, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @devm_clk_get_optional(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.es8316_priv*, %struct.es8316_priv** %4, align 8
  %16 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.es8316_priv*, %struct.es8316_priv** %4, align 8
  %18 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.es8316_priv*, %struct.es8316_priv** %4, align 8
  %28 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %70

31:                                               ; preds = %1
  %32 = load %struct.es8316_priv*, %struct.es8316_priv** %4, align 8
  %33 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.es8316_priv*, %struct.es8316_priv** %4, align 8
  %43 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_prepare_enable(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %41
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* @ES8316_RESET, align 4
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 63)
  %58 = call i32 @usleep_range(i32 5000, i32 5500)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = load i32, i32* @ES8316_RESET, align 4
  %61 = load i32, i32* @ES8316_RESET_CSM_ON, align 4
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %61)
  %63 = call i32 @msleep(i32 30)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = load i32, i32* @ES8316_SYS_VMIDSEL, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %64, i32 %65, i32 255)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %68 = load i32, i32* @ES8316_CLKMGR_ADCOSR, align 4
  %69 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 50)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %54, %48, %22
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @devm_clk_get_optional(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
