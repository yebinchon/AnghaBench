; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_lib.c_xonar_ext_power_gpio_changed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_lib.c_xonar_ext_power_gpio_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.TYPE_2__*, %struct.xonar_generic* }
%struct.TYPE_2__ = type { i32 }
%struct.xonar_generic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"power restored\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Hey! Don't unplug the power cable!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_ext_power_gpio_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_ext_power_gpio_changed(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_generic*, align 8
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %6 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %5, i32 0, i32 1
  %7 = load %struct.xonar_generic*, %struct.xonar_generic** %6, align 8
  store %struct.xonar_generic* %7, %struct.xonar_generic** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %9 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @oxygen_read8(%struct.oxygen* %8, i32 %11)
  %13 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %14 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %23 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %29 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %34 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_notice(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %41 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_crit(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
