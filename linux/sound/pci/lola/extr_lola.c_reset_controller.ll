; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_reset_controller.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_reset_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BAR0 = common dso_local global i32 0, align 4
@GCTL = common dso_local global i32 0, align 4
@BAR1 = common dso_local global i32 0, align 4
@BOARD_MODE = common dso_local global i32 0, align 4
@LOLA_GCTL_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cannot reset controller\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*)* @reset_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_controller(%struct.lola* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lola*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lola* %0, %struct.lola** %3, align 8
  %6 = load %struct.lola*, %struct.lola** %3, align 8
  %7 = load i32, i32* @BAR0, align 4
  %8 = load i32, i32* @GCTL, align 4
  %9 = call i32 @lola_readl(%struct.lola* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.lola*, %struct.lola** %3, align 8
  %14 = load i32, i32* @BAR1, align 4
  %15 = load i32, i32* @BOARD_MODE, align 4
  %16 = call i32 @lola_writel(%struct.lola* %13, i32 %14, i32 %15, i32 0)
  store i32 0, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.lola*, %struct.lola** %3, align 8
  %19 = getelementptr inbounds %struct.lola, %struct.lola* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.lola*, %struct.lola** %3, align 8
  %21 = load i32, i32* @BAR0, align 4
  %22 = load i32, i32* @GCTL, align 4
  %23 = load i32, i32* @LOLA_GCTL_RESET, align 4
  %24 = call i32 @lola_writel(%struct.lola* %20, i32 %21, i32 %22, i32 %23)
  %25 = load i64, i64* @jiffies, align 8
  %26 = call i64 @msecs_to_jiffies(i32 200)
  %27 = add i64 %25, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %38, %17
  %29 = call i32 @msleep(i32 1)
  %30 = load %struct.lola*, %struct.lola** %3, align 8
  %31 = load i32, i32* @BAR0, align 4
  %32 = load i32, i32* @GCTL, align 4
  %33 = call i32 @lola_readl(%struct.lola* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %43

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @time_before(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %28, label %43

43:                                               ; preds = %38, %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load %struct.lola*, %struct.lola** %3, align 8
  %48 = getelementptr inbounds %struct.lola, %struct.lola* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %46, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @lola_readl(%struct.lola*, i32, i32) #1

declare dso_local i32 @lola_writel(%struct.lola*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
