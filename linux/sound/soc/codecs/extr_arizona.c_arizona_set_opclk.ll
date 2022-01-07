; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_opclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_opclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32, i32 }

@ARIZONA_OUTPUT_SYSTEM_CLOCK = common dso_local global i32 0, align 4
@ARIZONA_OUTPUT_ASYNC_CLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@arizona_opclk_ref_44k1_rates = common dso_local global i32* null, align 8
@arizona_opclk_ref_48k_rates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Configured %dHz OPCLK\0A\00", align 1
@ARIZONA_OPCLK_DIV_MASK = common dso_local global i32 0, align 4
@ARIZONA_OPCLK_SEL_MASK = common dso_local global i32 0, align 4
@ARIZONA_OPCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to generate %dHz OPCLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @arizona_set_opclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_set_opclk(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arizona_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.arizona_priv* %15, %struct.arizona_priv** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @ARIZONA_OUTPUT_SYSTEM_CLOCK, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %20 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @ARIZONA_OUTPUT_ASYNC_CLOCK, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %25 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %112

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %13, align 4
  %32 = srem i32 %31, 8000
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32*, i32** @arizona_opclk_ref_44k1_rates, align 8
  store i32* %35, i32** %10, align 8
  br label %38

36:                                               ; preds = %30
  %37 = load i32*, i32** @arizona_opclk_ref_48k_rates, align 8
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %36, %34
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %101, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** @arizona_opclk_ref_48k_rates, align 8
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ule i32 %49, %50
  br label %52

52:                                               ; preds = %44, %39
  %53 = phi i1 [ false, %39 ], [ %51, %44 ]
  br i1 %53, label %54, label %104

54:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %97, %54
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = udiv i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 32
  br label %68

68:                                               ; preds = %65, %55
  %69 = phi i1 [ false, %55 ], [ %67, %65 ]
  br i1 %69, label %70, label %100

70:                                               ; preds = %68
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = udiv i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %70
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @ARIZONA_OPCLK_DIV_MASK, align 4
  %89 = load i32, i32* @ARIZONA_OPCLK_SEL_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @ARIZONA_OPCLK_DIV_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %90, i32 %95)
  store i32 0, i32* %4, align 4
  br label %112

97:                                               ; preds = %70
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %55

100:                                              ; preds = %68
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %39

104:                                              ; preds = %52
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %104, %80, %27
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
