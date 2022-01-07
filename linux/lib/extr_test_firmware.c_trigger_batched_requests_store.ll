; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_batched_requests_store.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_batched_requests_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, %struct.test_batched_req*, i32 }
%struct.test_batched_req = type { i64, i32, i64, i32*, %struct.device*, i32, i32* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@test_fw_mutex = common dso_local global i32 0, align 4
@test_fw_config = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"batched sync firmware loading '%s' %u times\0A\00", align 1
@test_fw_run_batch_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Setting up thread %u failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trigger_batched_requests_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_batched_requests_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.test_batched_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 @mutex_lock(i32* @test_fw_mutex)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @array3_size(i32 56, i64 %15, i32 2)
  %17 = call %struct.test_batched_req* @vzalloc(i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store %struct.test_batched_req* %17, %struct.test_batched_req** %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load %struct.test_batched_req*, %struct.test_batched_req** %21, align 8
  %23 = icmp ne %struct.test_batched_req* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %136

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %92, %27
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load %struct.test_batched_req*, %struct.test_batched_req** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %44, i64 %45
  store %struct.test_batched_req* %46, %struct.test_batched_req** %9, align 8
  %47 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %48 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %47, i32 0, i32 6
  store i32* null, i32** %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %51 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %56 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %59 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %58, i32 0, i32 4
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %61 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %60, i32 0, i32 1
  %62 = call i32 @init_completion(i32* %61)
  %63 = load i32, i32* @test_fw_run_batch_request, align 4
  %64 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %65 = load i32, i32* @KBUILD_MODNAME, align 4
  %66 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %67 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32* @kthread_run(i32 %63, %struct.test_batched_req* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %68)
  %70 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %71 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  %72 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %73 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %41
  %77 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %78 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76, %41
  %83 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %84 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %88 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %98

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %11, align 8
  br label %35

95:                                               ; preds = %35
  %96 = load i64, i64* %8, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %82
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %125, %98
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %99
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load %struct.test_batched_req*, %struct.test_batched_req** %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %108, i64 %109
  store %struct.test_batched_req* %110, %struct.test_batched_req** %9, align 8
  %111 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %112 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %105
  %116 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %117 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115, %105
  %121 = load %struct.test_batched_req*, %struct.test_batched_req** %9, align 8
  %122 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %121, i32 0, i32 1
  %123 = call i32 @wait_for_completion(i32* %122)
  br label %124

124:                                              ; preds = %120, %115
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %99

128:                                              ; preds = %99
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %24
  %137 = call i32 @mutex_unlock(i32* @test_fw_mutex)
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.test_batched_req* @vzalloc(i32) #1

declare dso_local i32 @array3_size(i32, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.test_batched_req*, i8*, i32, i64) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
