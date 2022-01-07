; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_request_store.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_request_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"loading '%s'\0A\00", align 1
@test_fw_mutex = common dso_local global i32 0, align 4
@test_firmware = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"load of '%s' failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"loaded: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trigger_request_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_request_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %48

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @mutex_lock(i32* @test_fw_mutex)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_firmware, align 8
  %26 = call i32 @release_firmware(%struct.TYPE_4__* %25)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @test_firmware, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @request_firmware(%struct.TYPE_4__** @test_firmware, i8* %27, %struct.device* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34)
  br label %43

36:                                               ; preds = %21
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_firmware, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = call i32 @mutex_unlock(i32* @test_fw_mutex)
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_4__*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i8*, %struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
