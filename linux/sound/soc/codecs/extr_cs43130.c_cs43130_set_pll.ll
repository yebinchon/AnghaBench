; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"unsupported pll input reference clock:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unsupported pll output ref clock: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cs43130->pll_bypass = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs43130_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cs43130_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.cs43130_private* %15, %struct.cs43130_private** %13, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %21 [
    i32 9600000, label %17
    i32 11289600, label %17
    i32 12000000, label %17
    i32 12288000, label %17
    i32 13000000, label %17
    i32 19200000, label %17
    i32 22579200, label %17
    i32 24000000, label %17
    i32 24576000, label %17
    i32 26000000, label %17
  ]

17:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.cs43130_private*, %struct.cs43130_private** %13, align 8
  %20 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %29

21:                                               ; preds = %5
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %58

29:                                               ; preds = %17
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %39 [
    i32 22579200, label %31
    i32 24576000, label %35
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.cs43130_private*, %struct.cs43130_private** %13, align 8
  %34 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %47

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.cs43130_private*, %struct.cs43130_private** %13, align 8
  %38 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %58

47:                                               ; preds = %35, %31
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %49 = call i32 @cs43130_pll_config(%struct.snd_soc_component* %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cs43130_private*, %struct.cs43130_private** %13, align 8
  %54 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %47, %39, %21
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cs43130_pll_config(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
