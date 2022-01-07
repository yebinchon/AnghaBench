; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_opclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_opclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, i32 }

@MADERA_OPCLK_DIV_MASK = common dso_local global i32 0, align 4
@MADERA_OPCLK_SEL_MASK = common dso_local global i32 0, align 4
@madera_opclk_ref_48k_rates = common dso_local global i32* null, align 8
@madera_opclk_ref_44k1_rates = common dso_local global i32* null, align 8
@MADERA_OUTPUT_SYSTEM_CLOCK = common dso_local global i32 0, align 4
@MADERA_OUTPUT_ASYNC_CLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Configured %dHz OPCLK\0A\00", align 1
@MADERA_OPCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to generate %dHz OPCLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @madera_set_opclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_set_opclk(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.madera_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.madera_priv* %17, %struct.madera_priv** %8, align 8
  %18 = load i32, i32* @MADERA_OPCLK_DIV_MASK, align 4
  %19 = load i32, i32* @MADERA_OPCLK_SEL_MASK, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** @madera_opclk_ref_48k_rates, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = load i32*, i32** @madera_opclk_ref_44k1_rates, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp ne i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %39 [
    i32 128, label %29
    i32 129, label %34
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* @MADERA_OUTPUT_SYSTEM_CLOCK, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %32 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  br label %42

34:                                               ; preds = %3
  %35 = load i32, i32* @MADERA_OUTPUT_ASYNC_CLOCK, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.madera_priv*, %struct.madera_priv** %8, align 8
  %37 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %122

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %15, align 4
  %44 = srem i32 %43, 4000
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32*, i32** @madera_opclk_ref_44k1_rates, align 8
  store i32* %47, i32** %12, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i32*, i32** @madera_opclk_ref_48k_rates, align 8
  store i32* %49, i32** %12, align 8
  br label %50

50:                                               ; preds = %48, %46
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %111, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** @madera_opclk_ref_48k_rates, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %51
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %111

65:                                               ; preds = %56
  store i32 2, i32* %14, align 4
  br label %66

66:                                               ; preds = %107, %65
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = udiv i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = icmp sle i32 %77, 30
  br label %79

79:                                               ; preds = %76, %66
  %80 = phi i1 [ false, %66 ], [ %78, %76 ]
  br i1 %80, label %81, label %110

81:                                               ; preds = %79
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = udiv i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %81
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %93 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @MADERA_OPCLK_DIV_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %11, align 4
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %102, i32 %103, i32 %104, i32 %105)
  store i32 0, i32* %4, align 4
  br label %122

107:                                              ; preds = %81
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %14, align 4
  br label %66

110:                                              ; preds = %79
  br label %111

111:                                              ; preds = %110, %64
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %51

114:                                              ; preds = %51
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %116 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %114, %91, %39
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
