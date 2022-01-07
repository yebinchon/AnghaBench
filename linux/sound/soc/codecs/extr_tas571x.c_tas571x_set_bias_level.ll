; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas571x.c_tas571x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tas571x_private = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to enable master clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @tas571x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas571x_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tas571x_private*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.tas571x_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.tas571x_private* %9, %struct.tas571x_private** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %52 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
    i32 131, label %40
  ]

11:                                               ; preds = %2
  br label %52

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %14)
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %19 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_ERR(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %17
  %24 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %25 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %13
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %42 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IS_ERR(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.tas571x_private*, %struct.tas571x_private** %6, align 8
  %48 = getelementptr inbounds %struct.tas571x_private, %struct.tas571x_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %2, %51, %39, %12, %11
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.tas571x_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
