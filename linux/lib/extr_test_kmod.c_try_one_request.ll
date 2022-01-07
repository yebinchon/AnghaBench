; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_try_one_request.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_try_one_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i32, i32, %struct.kmod_test_device_info* }
%struct.kmod_test_device_info = type { i32, i32, i32*, %struct.kmod_test_device* }

@ENOMEM = common dso_local global i32 0, align 4
@run_request = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Setting up thread %u failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Kicked off thread %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*, i32)* @try_one_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_one_request(%struct.kmod_test_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmod_test_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmod_test_device_info*, align 8
  %7 = alloca i32, align 4
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %9 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %8, i32 0, i32 3
  %10 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %10, i64 %12
  store %struct.kmod_test_device_info* %13, %struct.kmod_test_device_info** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %17 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %21 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %23 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %24 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %23, i32 0, i32 3
  store %struct.kmod_test_device* %22, %struct.kmod_test_device** %24, align 8
  %25 = load i32, i32* @run_request, align 4
  %26 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %27 = load i32, i32* @KBUILD_MODNAME, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @kthread_run(i32 %25, %struct.kmod_test_device_info* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %31 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %33 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %38 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36, %2
  %43 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %44 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %46 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %51 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %62

52:                                               ; preds = %36
  %53 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %54 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52
  %59 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %60 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  store i32 0, i32* %3, align 4
  br label %70

62:                                               ; preds = %42
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %6, align 8
  %65 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.kmod_test_device*, %struct.kmod_test_device** %4, align 8
  %67 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %58
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.kmod_test_device_info*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
