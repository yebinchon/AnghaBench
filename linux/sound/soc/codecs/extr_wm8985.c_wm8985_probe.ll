; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8985_priv = type { %struct.TYPE_8__* }

@wm8985_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@volume_update_regs = common dso_local global %struct.TYPE_8__* null, align 8
@WM8985_BIAS_CTRL = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@WM8985_BIASCUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8985_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8985_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wm8985_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.wm8985_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.wm8985_priv* %8, %struct.wm8985_priv** %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %12 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %13)
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load i32*, i32** @wm8985_supply_names, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %20, i32* %26, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %35 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %36)
  %38 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %39 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @devm_regulator_bulk_get(i32 %33, i64 %37, %struct.TYPE_8__* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %30
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %115

51:                                               ; preds = %30
  %52 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %53 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %54)
  %56 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %57 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @regulator_bulk_enable(i64 %55, %struct.TYPE_8__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %115

69:                                               ; preds = %51
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = call i32 @wm8985_reset(%struct.snd_soc_component* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %105

80:                                               ; preds = %69
  store i64 0, i64* %4, align 8
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @volume_update_regs, align 8
  %84 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %83)
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @volume_update_regs, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %92, i32 256, i32 256)
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %4, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %4, align 8
  br label %81

97:                                               ; preds = %81
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = load i32, i32* @WM8985_BIASCUT, align 4
  %100 = load i32, i32* @WM8985_BIASCUT, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @WM8985_BIAS_CTRL, i32 0, i32 0), align 4
  %102 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %101, i32 %99, i32 %100)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %104 = call i32 @wm8985_add_widgets(%struct.snd_soc_component* %103)
  store i32 0, i32* %2, align 4
  br label %115

105:                                              ; preds = %74
  %106 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %107 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %108)
  %110 = load %struct.wm8985_priv*, %struct.wm8985_priv** %5, align 8
  %111 = getelementptr inbounds %struct.wm8985_priv, %struct.wm8985_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @regulator_bulk_disable(i64 %109, %struct.TYPE_8__* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %105, %97, %62, %44
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.wm8985_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_bulk_enable(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @wm8985_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8985_add_widgets(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_disable(i64, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
