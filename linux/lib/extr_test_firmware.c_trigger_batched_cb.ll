; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_batched_cb.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c_trigger_batched_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }
%struct.test_batched_req = type { i32, %struct.firmware*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@test_fw_config = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @trigger_batched_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_batched_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.test_batched_req*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.test_batched_req*
  store %struct.test_batched_req* %7, %struct.test_batched_req** %5, align 8
  %8 = load %struct.test_batched_req*, %struct.test_batched_req** %5, align 8
  %9 = icmp ne %struct.test_batched_req* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.test_batched_req*, %struct.test_batched_req** %5, align 8
  %17 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @ssleep(i32 2)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = load %struct.test_batched_req*, %struct.test_batched_req** %5, align 8
  %25 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %24, i32 0, i32 1
  store %struct.firmware* %23, %struct.firmware** %25, align 8
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = icmp ne %struct.firmware* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28, %22
  %39 = load %struct.test_batched_req*, %struct.test_batched_req** %5, align 8
  %40 = getelementptr inbounds %struct.test_batched_req, %struct.test_batched_req* %39, i32 0, i32 0
  %41 = call i32 @complete(i32* %40)
  br label %42

42:                                               ; preds = %38, %10
  ret void
}

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
