; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_component_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_component_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32, i32 }

@CS35L33_CLK_CTL = common dso_local global i32 0, align 4
@CS35L33_MCLKDIV2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"external mclk freq=%d, internal mclk freq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs35l33_component_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_component_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cs35l33_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.cs35l33_private* %14, %struct.cs35l33_private** %12, align 8
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %38 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %16
    i32 133, label %26
    i32 132, label %26
    i32 131, label %26
  ]

16:                                               ; preds = %5, %5, %5
  %17 = load %struct.cs35l33_private*, %struct.cs35l33_private** %12, align 8
  %18 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CS35L33_CLK_CTL, align 4
  %21 = load i32, i32* @CS35L33_MCLKDIV2, align 4
  %22 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.cs35l33_private*, %struct.cs35l33_private** %12, align 8
  %25 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %43

26:                                               ; preds = %5, %5, %5
  %27 = load %struct.cs35l33_private*, %struct.cs35l33_private** %12, align 8
  %28 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CS35L33_CLK_CTL, align 4
  %31 = load i32, i32* @CS35L33_MCLKDIV2, align 4
  %32 = load i32, i32* @CS35L33_MCLKDIV2, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = udiv i32 %34, 2
  %36 = load %struct.cs35l33_private*, %struct.cs35l33_private** %12, align 8
  %37 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %43

38:                                               ; preds = %5
  %39 = load %struct.cs35l33_private*, %struct.cs35l33_private** %12, align 8
  %40 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %26, %16
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.cs35l33_private*, %struct.cs35l33_private** %12, align 8
  %49 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
