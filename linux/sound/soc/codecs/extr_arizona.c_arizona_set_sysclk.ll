; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32, i32, %struct.arizona* }
%struct.arizona = type { i32, i32 }

@ARIZONA_SYSCLK_FREQ_MASK = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@ARIZONA_SYSTEM_CLOCK_1 = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_FRAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ASYNCCLK\00", align 1
@ARIZONA_ASYNC_CLOCK_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARIZONA_CLK_12MHZ = common dso_local global i32 0, align 4
@ARIZONA_SYSCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_CLK_24MHZ = common dso_local global i32 0, align 4
@ARIZONA_CLK_49MHZ = common dso_local global i32 0, align 4
@ARIZONA_CLK_73MHZ = common dso_local global i32 0, align 4
@ARIZONA_CLK_98MHZ = common dso_local global i32 0, align 4
@ARIZONA_CLK_147MHZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s cleared\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s set to %uHz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.arizona_priv*, align 8
  %13 = alloca %struct.arizona*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.arizona_priv* %20, %struct.arizona_priv** %12, align 8
  %21 = load %struct.arizona_priv*, %struct.arizona_priv** %12, align 8
  %22 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %21, i32 0, i32 2
  %23 = load %struct.arizona*, %struct.arizona** %22, align 8
  store %struct.arizona* %23, %struct.arizona** %13, align 8
  %24 = load i32, i32* @ARIZONA_SYSCLK_FREQ_MASK, align 4
  %25 = load i32, i32* @ARIZONA_SYSCLK_SRC_MASK, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ARIZONA_SYSCLK_SRC_SHIFT, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %47 [
    i32 128, label %31
    i32 131, label %38
    i32 129, label %42
    i32 130, label %42
  ]

31:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %32 = load i32, i32* @ARIZONA_SYSTEM_CLOCK_1, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.arizona_priv*, %struct.arizona_priv** %12, align 8
  %34 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %33, i32 0, i32 0
  store i32* %34, i32** %18, align 8
  %35 = load i32, i32* @ARIZONA_SYSCLK_FRAC, align 4
  %36 = load i32, i32* %16, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %16, align 4
  br label %50

38:                                               ; preds = %5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %39 = load i32, i32* @ARIZONA_ASYNC_CLOCK_1, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.arizona_priv*, %struct.arizona_priv** %12, align 8
  %41 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %40, i32 0, i32 1
  store i32* %41, i32** %18, align 8
  br label %50

42:                                               ; preds = %5, %5
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @arizona_set_opclk(%struct.snd_soc_component* %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %124

47:                                               ; preds = %5
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %124

50:                                               ; preds = %38, %31
  %51 = load i32, i32* %10, align 4
  switch i32 %51, label %97 [
    i32 5644800, label %52
    i32 6144000, label %52
    i32 11289600, label %53
    i32 12288000, label %53
    i32 22579200, label %59
    i32 24576000, label %59
    i32 45158400, label %65
    i32 49152000, label %65
    i32 67737600, label %71
    i32 73728000, label %71
    i32 90316800, label %77
    i32 98304000, label %77
    i32 135475200, label %83
    i32 147456000, label %83
    i32 0, label %89
  ]

52:                                               ; preds = %50, %50
  br label %100

53:                                               ; preds = %50, %50
  %54 = load i32, i32* @ARIZONA_CLK_12MHZ, align 4
  %55 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %17, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %17, align 4
  br label %100

59:                                               ; preds = %50, %50
  %60 = load i32, i32* @ARIZONA_CLK_24MHZ, align 4
  %61 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %17, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %17, align 4
  br label %100

65:                                               ; preds = %50, %50
  %66 = load i32, i32* @ARIZONA_CLK_49MHZ, align 4
  %67 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %17, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %17, align 4
  br label %100

71:                                               ; preds = %50, %50
  %72 = load i32, i32* @ARIZONA_CLK_73MHZ, align 4
  %73 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %17, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %17, align 4
  br label %100

77:                                               ; preds = %50, %50
  %78 = load i32, i32* @ARIZONA_CLK_98MHZ, align 4
  %79 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %17, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %17, align 4
  br label %100

83:                                               ; preds = %50, %50
  %84 = load i32, i32* @ARIZONA_CLK_147MHZ, align 4
  %85 = load i32, i32* @ARIZONA_SYSCLK_FREQ_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %17, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %17, align 4
  br label %100

89:                                               ; preds = %50
  %90 = load %struct.arizona*, %struct.arizona** %13, align 8
  %91 = getelementptr inbounds %struct.arizona, %struct.arizona* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32*, i32** %18, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %6, align 4
  br label %124

97:                                               ; preds = %50
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %124

100:                                              ; preds = %83, %77, %71, %65, %59, %53, %52
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %18, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = urem i32 %103, 6144000
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @ARIZONA_SYSCLK_FRAC, align 4
  %108 = load i32, i32* %17, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.arizona*, %struct.arizona** %13, align 8
  %112 = getelementptr inbounds %struct.arizona, %struct.arizona* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %114, i32 %115)
  %117 = load %struct.arizona*, %struct.arizona** %13, align 8
  %118 = getelementptr inbounds %struct.arizona, %struct.arizona* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @regmap_update_bits(i32 %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %110, %97, %89, %47, %42
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @arizona_set_opclk(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
