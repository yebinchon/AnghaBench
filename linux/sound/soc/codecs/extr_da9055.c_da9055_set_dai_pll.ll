; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i64, i64 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da9055_priv = type { i64 }

@DA9055_PLL_CTRL = common dso_local global i32 0, align 4
@DA9055_PLL_EN = common dso_local global i32 0, align 4
@da9055_pll_div = common dso_local global %struct.TYPE_3__* null, align 8
@DA9055_PLL_FRAC_TOP = common dso_local global i32 0, align 4
@DA9055_PLL_FRAC_BOT = common dso_local global i32 0, align 4
@DA9055_PLL_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error in setting up PLL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da9055_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.da9055_priv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 1
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %12, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %22 = call %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.da9055_priv* %22, %struct.da9055_priv** %13, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %24 = load i32, i32* @DA9055_PLL_CTRL, align 4
  %25 = load i32, i32* @DA9055_PLL_EN, align 4
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.da9055_priv*, %struct.da9055_priv** %13, align 8
  %28 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 2822400
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %106

35:                                               ; preds = %31, %5
  store i64 0, i64* %17, align 8
  br label %36

36:                                               ; preds = %84, %35
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %39 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %41
  %50 = load %struct.da9055_priv*, %struct.da9055_priv** %13, align 8
  %51 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %52, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %62 = load i64, i64* %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %74 = load i64, i64* %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %16, align 8
  br label %87

83:                                               ; preds = %59, %49, %41
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %17, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %17, align 8
  br label %36

87:                                               ; preds = %67, %36
  %88 = load i64, i64* %17, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_pll_div, align 8
  %90 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %89)
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %106

93:                                               ; preds = %87
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %95 = load i32, i32* @DA9055_PLL_FRAC_TOP, align 4
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i64 %96)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %99 = load i32, i32* @DA9055_PLL_FRAC_BOT, align 4
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %98, i32 %99, i64 %100)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %103 = load i32, i32* @DA9055_PLL_INTEGER, align 4
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %102, i32 %103, i64 %104)
  store i32 0, i32* %6, align 4
  br label %113

106:                                              ; preds = %92, %34
  %107 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %106, %93
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
