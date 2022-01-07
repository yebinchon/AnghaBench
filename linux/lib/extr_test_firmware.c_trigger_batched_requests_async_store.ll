; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_batched_requests_async_store.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_batched_requests_async_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, %struct.test_batched_req* }
%struct.test_batched_req = type { i64, i64, i32, i32, i32, i32* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@test_fw_mutex = common dso_local global i32 0, align 4
@test_fw_config = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"batched loading '%s' custom fallback mechanism %u times\0A\00", align 1
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@FW_ACTION_NOHOTPLUG = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@trigger_batched_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"#%u: batched async load failed setup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trigger_batched_requests_async_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_batched_requests_async_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.test_batched_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = call i32 @mutex_lock(i32* @test_fw_mutex)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @array3_size(i32 40, i32 %16, i32 2)
  %18 = call %struct.test_batched_req* @vzalloc(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store %struct.test_batched_req* %18, %struct.test_batched_req** %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load %struct.test_batched_req*, %struct.test_batched_req** %22, align 8
  %24 = icmp ne %struct.test_batched_req* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %135

28:                                               ; preds = %4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @FW_ACTION_NOHOTPLUG, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %95, %44
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %46
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load %struct.test_batched_req*, %struct.test_batched_req** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %56, i64 %57
  store %struct.test_batched_req* %58, %struct.test_batched_req** %9, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %63 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %65 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %64, i32 0, i32 5
  store i32* null, i32** %65, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %68 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %70 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %69, i32 0, i32 4
  %71 = call i32 @init_completion(i32* %70)
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %75 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %80 = load i32, i32* @trigger_batched_cb, align 4
  %81 = call i32 @request_firmware_nowait(i32 %72, i32 %73, i64 %76, %struct.device* %77, i32 %78, %struct.test_batched_req* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %53
  %85 = load i64, i64* %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %90 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %101

91:                                               ; preds = %53
  %92 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %93 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %92, i32 0, i32 3
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %46

98:                                               ; preds = %46
  %99 = load i64, i64* %8, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %84
  store i64 0, i64* %12, align 8
  br label %102

102:                                              ; preds = %124, %101
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load %struct.test_batched_req*, %struct.test_batched_req** %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %112, i64 %113
  store %struct.test_batched_req* %114, %struct.test_batched_req** %9, align 8
  %115 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %116 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %121 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %120, i32 0, i32 4
  %122 = call i32 @wait_for_completion(i32* %121)
  br label %123

123:                                              ; preds = %119, %109
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %12, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %12, align 8
  br label %102

127:                                              ; preds = %102
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %127
  br label %135

135:                                              ; preds = %134, %25
  %136 = call i32 @mutex_unlock(i32* @test_fw_mutex)
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.test_batched_req* @vzalloc(i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i64, %struct.device*, i32, %struct.test_batched_req*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
