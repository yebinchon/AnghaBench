; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-reset.c_wimax_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-reset.c_wimax_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, {}*, i32, i32, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"(wimax_dev %p)\0A\00", align 1
@WIMAX_ST_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(wimax_dev %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_reset(%struct.wimax_dev* %0) #0 {
  %2 = alloca %struct.wimax_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.wimax_dev* %0, %struct.wimax_dev** %2, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %9 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %13 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %12)
  %14 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %15 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %18 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_hold(i32 %19)
  %21 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %22 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %25 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %24, i32 0, i32 4
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @WIMAX_ST_DOWN, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %32 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %35 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %34, i32 0, i32 1
  %36 = bitcast {}** %35 to i32 (%struct.wimax_dev*)**
  %37 = load i32 (%struct.wimax_dev*)*, i32 (%struct.wimax_dev*)** %36, align 8
  %38 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %39 = call i32 %37(%struct.wimax_dev* %38)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %41 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %40, i32 0, i32 3
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %30, %1
  %44 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %45 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_put(i32 %46)
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.wimax_dev*, %struct.wimax_dev** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @d_fnend(i32 3, %struct.device* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %49, i32 %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
