; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_run_test_fs_type.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_run_test_fs_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, %struct.test_config }
%struct.test_config = type { i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Test case: %s (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Test filesystem to load: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Number of threads to run: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Thread IDs will range from 0 - %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*)* @run_test_fs_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test_fs_type(%struct.kmod_test_device* %0) #0 {
  %2 = alloca %struct.kmod_test_device*, align 8
  %3 = alloca %struct.test_config*, align 8
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %2, align 8
  %4 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %5 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %4, i32 0, i32 1
  store %struct.test_config* %5, %struct.test_config** %3, align 8
  %6 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %7 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.test_config*, %struct.test_config** %3, align 8
  %10 = getelementptr inbounds %struct.test_config, %struct.test_config* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @test_case_str(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = load %struct.test_config*, %struct.test_config** %3, align 8
  %15 = getelementptr inbounds %struct.test_config, %struct.test_config* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, i64, ...) @dev_info(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16)
  %18 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %19 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.test_config*, %struct.test_config** %3, align 8
  %22 = getelementptr inbounds %struct.test_config, %struct.test_config* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, i64, ...) @dev_info(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %26 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.test_config*, %struct.test_config** %3, align 8
  %29 = getelementptr inbounds %struct.test_config, %struct.test_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, i64, ...) @dev_info(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %33 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.test_config*, %struct.test_config** %3, align 8
  %36 = getelementptr inbounds %struct.test_config, %struct.test_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i32 (i32, i8*, i64, ...) @dev_info(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %41 = call i32 @try_requests(%struct.kmod_test_device* %40)
  ret i32 %41
}

declare dso_local i32 @dev_info(i32, i8*, i64, ...) #1

declare dso_local i32 @test_case_str(i32) #1

declare dso_local i32 @try_requests(%struct.kmod_test_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
