; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_firmware.c___test_firmware_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_firmware.c___test_firmware_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i64, i32, i32, i32 }

@test_fw_config = common dso_local global %struct.TYPE_2__* null, align 8
@TEST_FIRMWARE_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TEST_FIRMWARE_NUM_REQS = common dso_local global i32 0, align 4
@request_firmware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__test_firmware_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_firmware_config_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 7
  %5 = load i32, i32* @TEST_FIRMWARE_NAME, align 4
  %6 = load i32, i32* @TEST_FIRMWARE_NAME, align 4
  %7 = call i32 @strlen(i32 %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @__kstrncpy(i32* %4, i32 %5, i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %30

13:                                               ; preds = %0
  %14 = load i32, i32* @TEST_FIRMWARE_NUM_REQS, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* @request_firmware, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_fw_config, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  store i32 0, i32* %1, align 4
  br label %33

30:                                               ; preds = %12
  %31 = call i32 (...) @__test_firmware_config_free()
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %13
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @__kstrncpy(i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @__test_firmware_config_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
