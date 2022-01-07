; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_component_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_component_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"clk_id = %d, source = %d, freq = %d, dir = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid MCLK INT freq: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_EXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid MCLK source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @cs43130_component_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_component_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cs43130_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.cs43130_private* %14, %struct.cs43130_private** %12, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %28 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %5, %5
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.cs43130_private*, %struct.cs43130_private** %12, align 8
  %27 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %36

28:                                               ; preds = %5
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %51

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CS43130_MCLK_SRC_EXT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.cs43130_private*, %struct.cs43130_private** %12, align 8
  %42 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %50

43:                                               ; preds = %36
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %43, %28
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
