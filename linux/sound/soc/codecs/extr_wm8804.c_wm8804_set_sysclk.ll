; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8804_PLL6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"OSCCLOCK is not within the recommended range: %uHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown clock source: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8804_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8804_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %52 [
    i32 129, label %15
    i32 128, label %40
    i32 131, label %44
    i32 130, label %48
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp uge i32 %16, 10000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %19, 14400000
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %8, align 4
  %23 = icmp uge i32 %22, 16280000
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp ule i32 %25, 27000000
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %18
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %29 = load i32, i32* @WM8804_PLL6, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 128, i32 128)
  br label %39

31:                                               ; preds = %24, %21
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %61

39:                                               ; preds = %27
  br label %60

40:                                               ; preds = %4
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %42 = load i32, i32* @WM8804_PLL6, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 128, i32 0)
  br label %60

44:                                               ; preds = %4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %46 = load i32, i32* @WM8804_PLL6, align 4
  %47 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %45, i32 %46, i32 8, i32 0)
  br label %60

48:                                               ; preds = %4
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %50 = load i32, i32* @WM8804_PLL6, align 4
  %51 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 8, i32 8)
  br label %60

52:                                               ; preds = %4
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %48, %44, %40, %39
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %52, %31
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
