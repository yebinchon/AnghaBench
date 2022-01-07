; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_test_dev_kmod_stop_tests.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_test_dev_kmod_stop_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i32, %struct.kmod_test_device_info*, %struct.test_config }
%struct.kmod_test_device_info = type { i64, i64 }
%struct.test_config = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Ending request_module() tests\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Stopping still-running thread %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmod_test_device*)* @test_dev_kmod_stop_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dev_kmod_stop_tests(%struct.kmod_test_device* %0) #0 {
  %2 = alloca %struct.kmod_test_device*, align 8
  %3 = alloca %struct.test_config*, align 8
  %4 = alloca %struct.kmod_test_device_info*, align 8
  %5 = alloca i32, align 4
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %2, align 8
  %6 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %7 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %6, i32 0, i32 3
  store %struct.test_config* %7, %struct.test_config** %3, align 8
  %8 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %9 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @dev_info(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %13 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.test_config*, %struct.test_config** %3, align 8
  %18 = getelementptr inbounds %struct.test_config, %struct.test_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %23 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %22, i32 0, i32 2
  %24 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %24, i64 %26
  store %struct.kmod_test_device_info* %27, %struct.kmod_test_device_info** %4, align 8
  %28 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %29 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %34 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @IS_ERR(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %40 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, ...) @dev_info(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %45 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @kthread_stop(i64 %46)
  br label %48

48:                                               ; preds = %38, %32, %21
  %49 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %50 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %55 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %60 = call i32 @test_kmod_put_module(%struct.kmod_test_device_info* %59)
  br label %61

61:                                               ; preds = %58, %53, %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %67 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @test_kmod_put_module(%struct.kmod_test_device_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
