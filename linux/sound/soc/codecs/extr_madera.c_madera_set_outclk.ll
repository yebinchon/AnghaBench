; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_outclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_outclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Configured OUTCLK to SYSCLK\0A\00", align 1
@MADERA_OUTPUT_RATE_1 = common dso_local global i32 0, align 4
@MADERA_OUT_CLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Configured OUTCLK to ASYNCCLK\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Configured %dHz OUTCLK\0A\00", align 1
@MADERA_OUT_EXT_CLK_DIV_MASK = common dso_local global i32 0, align 4
@MADERA_OUT_EXT_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Unable to generate %dHz OUTCLK from %dHz MCLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @madera_set_outclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_set_outclk(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %33 [
    i32 128, label %12
    i32 132, label %22
    i32 131, label %32
    i32 130, label %32
    i32 129, label %32
  ]

12:                                               ; preds = %3
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %18 = load i32, i32* @MADERA_OUTPUT_RATE_1, align 4
  %19 = load i32, i32* @MADERA_OUT_CLK_SRC_MASK, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %88

22:                                               ; preds = %3
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = load i32, i32* @MADERA_OUTPUT_RATE_1, align 4
  %29 = load i32, i32* @MADERA_OUT_CLK_SRC_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %88

32:                                               ; preds = %3, %3, %3
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %88

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = urem i32 %37, 4000
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 5644800, i32* %10, align 4
  br label %42

41:                                               ; preds = %36
  store i32 6144000, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 8
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = udiv i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = urem i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %52
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %64 = load i32, i32* @MADERA_OUTPUT_RATE_1, align 4
  %65 = load i32, i32* @MADERA_OUT_EXT_CLK_DIV_MASK, align 4
  %66 = load i32, i32* @MADERA_OUT_CLK_SRC_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MADERA_OUT_EXT_CLK_DIV_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %67, i32 %72)
  store i32 0, i32* %4, align 4
  br label %88

74:                                               ; preds = %52, %46
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 2
  store i32 %78, i32* %8, align 4
  br label %43

79:                                               ; preds = %43
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %79, %57, %33, %22, %12
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
