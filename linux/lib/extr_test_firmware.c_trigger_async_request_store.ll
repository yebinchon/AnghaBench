; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_async_request_store.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_async_request_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"loading '%s'\0A\00", align 1
@test_fw_mutex = common dso_local global i32 0, align 4
@test_firmware = common dso_local global %struct.TYPE_3__* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@trigger_async_request_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"async load of '%s' failed: %d\0A\00", align 1
@async_fw_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"loaded: %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to async load firmware\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trigger_async_request_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_async_request_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kstrndup(i8* %12, i64 %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @mutex_lock(i32* @test_fw_mutex)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_firmware, align 8
  %26 = call i32 @release_firmware(%struct.TYPE_3__* %25)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @test_firmware, align 8
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* @trigger_async_request_cb, align 4
  %32 = call i32 @request_firmware_nowait(i32 %27, i32 1, i8* %28, %struct.device* %29, i32 %30, i32* null, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @kfree(i8* %39)
  br label %59

41:                                               ; preds = %21
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = call i32 @wait_for_completion(i32* @async_fw_done)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_firmware, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_firmware, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  br label %58

54:                                               ; preds = %41
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %35
  %60 = call i32 @mutex_unlock(i32* @test_fw_mutex)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %18
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_3__*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, %struct.device*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
