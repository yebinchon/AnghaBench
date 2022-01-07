; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"(wimax_dev %p state %u)\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"(wimax_dev %p state %u) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_rfkill(%struct.wimax_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %8 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %7)
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @d_fnstart(i32 3, %struct.device* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %10, i32 %11)
  %13 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %14 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %17 = call i32 @wimax_dev_is_ready(%struct.wimax_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOMEDIUM, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 390, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25, %20
  br label %61

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %48 [
    i32 129, label %32
    i32 130, label %32
    i32 128, label %47
  ]

32:                                               ; preds = %30, %30
  %33 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @__wimax_rf_toggle_radio(%struct.wimax_dev* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %60

39:                                               ; preds = %32
  %40 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %41 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 130
  %45 = zext i1 %44 to i32
  %46 = call i32 @rfkill_set_sw_state(i32 %42, i32 %45)
  br label %51

47:                                               ; preds = %30
  br label %51

48:                                               ; preds = %30
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %47, %39
  %52 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %53 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 1
  %56 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %57 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %48, %38
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %63 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @d_fnend(i32 3, %struct.device* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wimax_dev_is_ready(%struct.wimax_dev*) #1

declare dso_local i32 @__wimax_rf_toggle_radio(%struct.wimax_dev*, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
