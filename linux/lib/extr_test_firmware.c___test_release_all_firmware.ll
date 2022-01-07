; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c___test_release_all_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c___test_release_all_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.test_batched_req* }
%struct.test_batched_req = type { i64 }

@test_fw_config = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__test_release_all_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__test_release_all_firmware() #0 {
  %1 = alloca %struct.test_batched_req*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load %struct.test_batched_req*, %struct.test_batched_req** %4, align 8
  %6 = icmp ne %struct.test_batched_req* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %41

8:                                                ; preds = %0
  store i64 0, i64* %2, align 8
  br label %9

9:                                                ; preds = %31, %8
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.test_batched_req*, %struct.test_batched_req** %17, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %18, i64 %19
  store %struct.test_batched_req* %20, %struct.test_batched_req** %1, align 8
  %21 = load %struct.test_batched_req*, %struct.test_batched_req** %1, align 8
  %22 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.test_batched_req*, %struct.test_batched_req** %1, align 8
  %27 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @release_firmware(i64 %28)
  br label %30

30:                                               ; preds = %25, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %2, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %2, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.test_batched_req*, %struct.test_batched_req** %36, align 8
  %38 = call i32 @vfree(%struct.test_batched_req* %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.test_batched_req* null, %struct.test_batched_req** %40, align 8
  br label %41

41:                                               ; preds = %34, %7
  ret void
}

declare dso_local i32 @release_firmware(i64) #1

declare dso_local i32 @vfree(%struct.test_batched_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
