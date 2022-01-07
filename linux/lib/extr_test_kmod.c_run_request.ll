; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_run_request.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device_info = type { i32, i32, i32*, i32, i32, %struct.kmod_test_device* }
%struct.kmod_test_device = type { i32, i32, %struct.test_config }
%struct.test_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Ran thread %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_request(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kmod_test_device_info*, align 8
  %5 = alloca %struct.kmod_test_device*, align 8
  %6 = alloca %struct.test_config*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.kmod_test_device_info*
  store %struct.kmod_test_device_info* %8, %struct.kmod_test_device_info** %4, align 8
  %9 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %9, i32 0, i32 5
  %11 = load %struct.kmod_test_device*, %struct.kmod_test_device** %10, align 8
  store %struct.kmod_test_device* %11, %struct.kmod_test_device** %5, align 8
  %12 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %13 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %12, i32 0, i32 2
  store %struct.test_config* %13, %struct.test_config** %6, align 8
  %14 = load %struct.test_config*, %struct.test_config** %6, align 8
  %15 = getelementptr inbounds %struct.test_config, %struct.test_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %1
  %18 = load %struct.test_config*, %struct.test_config** %6, align 8
  %19 = getelementptr inbounds %struct.test_config, %struct.test_config* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %23 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load %struct.test_config*, %struct.test_config** %6, align 8
  %26 = getelementptr inbounds %struct.test_config, %struct.test_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_fs_type(i32 %27)
  %29 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %30 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %32 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %37

33:                                               ; preds = %1
  %34 = call i32 (...) @BUG()
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %24, %17
  %38 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %39 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %42 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %46 = call i32 @test_kmod_put_module(%struct.kmod_test_device_info* %45)
  %47 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %48 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %51 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %53 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %4, align 8
  %54 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kmod_test_done_check(%struct.kmod_test_device* %52, i32 %55)
  %57 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %58 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %37, %33
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @get_fs_type(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @test_kmod_put_module(%struct.kmod_test_device_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmod_test_done_check(%struct.kmod_test_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
