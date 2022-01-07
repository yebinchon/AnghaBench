; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_dai_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_dai_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l34_private = type { i32, i32 }

@CS35L34_MCLK_RATE_5P6448 = common dso_local global i32 0, align 4
@CS35L34_MCLK_RATE_6P0000 = common dso_local global i32 0, align 4
@CS35L34_MCLK_RATE_6P1440 = common dso_local global i32 0, align 4
@CS35L34_MCLK_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ERROR: Invalid Frequency %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS35L34_MCLK_CTL = common dso_local global i32 0, align 4
@CS35L34_MCLK_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @cs35l34_dai_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_dai_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.cs35l34_private*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs35l34_private* %17, %struct.cs35l34_private** %11, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %58 [
    i32 130, label %19
    i32 129, label %24
    i32 128, label %29
    i32 133, label %34
    i32 132, label %42
    i32 131, label %50
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @CS35L34_MCLK_RATE_5P6448, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %23 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %68

24:                                               ; preds = %4
  %25 = load i32, i32* @CS35L34_MCLK_RATE_6P0000, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %28 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %68

29:                                               ; preds = %4
  %30 = load i32, i32* @CS35L34_MCLK_RATE_6P1440, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %33 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %68

34:                                               ; preds = %4
  %35 = load i32, i32* @CS35L34_MCLK_DIV, align 4
  %36 = load i32, i32* @CS35L34_MCLK_RATE_5P6448, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = udiv i32 %38, 2
  %40 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %41 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %68

42:                                               ; preds = %4
  %43 = load i32, i32* @CS35L34_MCLK_DIV, align 4
  %44 = load i32, i32* @CS35L34_MCLK_RATE_6P0000, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = udiv i32 %46, 2
  %48 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %49 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %68

50:                                               ; preds = %4
  %51 = load i32, i32* @CS35L34_MCLK_DIV, align 4
  %52 = load i32, i32* @CS35L34_MCLK_RATE_6P1440, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = udiv i32 %54, 2
  %56 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %57 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %68

58:                                               ; preds = %4
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %65 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %78

68:                                               ; preds = %50, %42, %34, %29, %24, %19
  %69 = load %struct.cs35l34_private*, %struct.cs35l34_private** %11, align 8
  %70 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CS35L34_MCLK_CTL, align 4
  %73 = load i32, i32* @CS35L34_MCLK_DIV, align 4
  %74 = load i32, i32* @CS35L34_MCLK_RATE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %75, i32 %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %68, %58
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
