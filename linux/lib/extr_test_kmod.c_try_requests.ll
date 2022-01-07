; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_try_requests.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_try_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i32, i32, %struct.test_config }
%struct.test_config = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"No errors were found while initializing threads\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"At least one thread failed to start, stop all work\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*)* @try_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_requests(%struct.kmod_test_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmod_test_device*, align 8
  %4 = alloca %struct.test_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %3, align 8
  %8 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %9 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %8, i32 0, i32 3
  store %struct.test_config* %9, %struct.test_config** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.test_config*, %struct.test_config** %4, align 8
  %13 = getelementptr inbounds %struct.test_config, %struct.test_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %18 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %33

22:                                               ; preds = %16
  %23 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @try_one_request(%struct.kmod_test_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %28, %21, %10
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %38 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %40 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %44 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %43, i32 0, i32 2
  %45 = call i32 @wait_for_completion(i32* %44)
  %46 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %47 = call i32 @tally_up_work(%struct.kmod_test_device* %46)
  br label %59

48:                                               ; preds = %33
  %49 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %50 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %52 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_info(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %56 = call i32 @test_dev_kmod_stop_tests(%struct.kmod_test_device* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @try_one_request(%struct.kmod_test_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @tally_up_work(%struct.kmod_test_device*) #1

declare dso_local i32 @test_dev_kmod_stop_tests(%struct.kmod_test_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
