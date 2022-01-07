; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_test_fw_run_batch_request.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_test_fw_run_batch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_5__**, i32, i32)*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.test_batched_req = type { i32, i32, i32*, i32, %struct.TYPE_5__*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@test_fw_config = common dso_local global %struct.TYPE_4__* null, align 8
@TEST_FIRMWARE_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"#%u: batched sync load failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"#%u: batched sync loaded %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_fw_run_batch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_fw_run_batch_request(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.test_batched_req*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.test_batched_req*
  store %struct.test_batched_req* %7, %struct.test_batched_req** %4, align 8
  %8 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %9 = icmp ne %struct.test_batched_req* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_fw_config, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_fw_config, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i32, i32* @TEST_FIRMWARE_BUF_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %116

31:                                               ; preds = %22
  %32 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %33 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %32, i32 0, i32 4
  %34 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %35 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %38 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @TEST_FIRMWARE_BUF_SIZE, align 4
  %42 = call i32 @request_firmware_into_buf(%struct.TYPE_5__** %33, i32 %36, i32 %39, i8* %40, i32 %41)
  %43 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %44 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %46 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %45, i32 0, i32 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @kfree(i8* %50)
  br label %52

52:                                               ; preds = %49, %31
  br label %68

53:                                               ; preds = %17
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_fw_config, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_5__**, i32, i32)*, i32 (%struct.TYPE_5__**, i32, i32)** %55, align 8
  %57 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %58 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %57, i32 0, i32 4
  %59 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %60 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %63 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %56(%struct.TYPE_5__** %58, i32 %61, i32 %64)
  %66 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %67 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %53, %52
  %69 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %70 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %75 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %78 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_fw_config, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %87 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @test_fw_config, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %73
  br label %110

92:                                               ; preds = %68
  %93 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %94 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %93, i32 0, i32 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = icmp ne %struct.TYPE_5__* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %99 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %101 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %104 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %103, i32 0, i32 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %107)
  br label %109

109:                                              ; preds = %97, %92
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %112 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %111, i32 0, i32 3
  %113 = call i32 @complete(i32* %112)
  %114 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %115 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %114, i32 0, i32 2
  store i32* null, i32** %115, align 8
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %28, %10
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @request_firmware_into_buf(%struct.TYPE_5__**, i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
