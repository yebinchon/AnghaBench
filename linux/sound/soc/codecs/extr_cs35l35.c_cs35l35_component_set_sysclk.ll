; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_component_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_component_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { i32, i32 }

@CS35L35_CLK_SOURCE_MCLK = common dso_local global i32 0, align 4
@CS35L35_CLK_SOURCE_SCLK = common dso_local global i32 0, align 4
@CS35L35_CLK_SOURCE_PDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid CLK Source\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid CLK Frequency Input : %d\0A\00", align 1
@CS35L35_CLK_CTL1 = common dso_local global i32 0, align 4
@CS35L35_CLK_SOURCE_MASK = common dso_local global i32 0, align 4
@CS35L35_CLK_SOURCE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to set sysclk %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs35l35_component_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_component_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cs35l35_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs35l35_private* %16, %struct.cs35l35_private** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %24 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %22
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @CS35L35_CLK_SOURCE_MCLK, align 4
  store i32 %19, i32* %13, align 4
  br label %31

20:                                               ; preds = %5
  %21 = load i32, i32* @CS35L35_CLK_SOURCE_SCLK, align 4
  store i32 %21, i32* %13, align 4
  br label %31

22:                                               ; preds = %5
  %23 = load i32, i32* @CS35L35_CLK_SOURCE_PDM, align 4
  store i32 %23, i32* %13, align 4
  br label %31

24:                                               ; preds = %5
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %66

31:                                               ; preds = %22, %20, %18
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %37 [
    i32 5644800, label %33
    i32 6144000, label %33
    i32 11289600, label %33
    i32 12000000, label %33
    i32 12288000, label %33
    i32 13000000, label %33
    i32 22579200, label %33
    i32 24000000, label %33
    i32 24576000, label %33
    i32 26000000, label %33
  ]

33:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.cs35l35_private*, %struct.cs35l35_private** %12, align 8
  %36 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %66

45:                                               ; preds = %33
  %46 = load %struct.cs35l35_private*, %struct.cs35l35_private** %12, align 8
  %47 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CS35L35_CLK_CTL1, align 4
  %50 = load i32, i32* @CS35L35_CLK_SOURCE_MASK, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @CS35L35_CLK_SOURCE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %6, align 4
  br label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %57, %37, %24
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
