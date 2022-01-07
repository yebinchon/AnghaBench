; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c___trigger_config_run.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c___trigger_config_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i64, %struct.test_config }
%struct.test_config = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid test case requested: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*)* @__trigger_config_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__trigger_config_run(%struct.kmod_test_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmod_test_device*, align 8
  %4 = alloca %struct.test_config*, align 8
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %3, align 8
  %5 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %6 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %5, i32 0, i32 2
  store %struct.test_config* %6, %struct.test_config** %4, align 8
  %7 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %8 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.test_config*, %struct.test_config** %4, align 8
  %10 = getelementptr inbounds %struct.test_config, %struct.test_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %1
  %13 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %14 = call i32 @run_test_driver(%struct.kmod_test_device* %13)
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %17 = call i32 @run_test_fs_type(%struct.kmod_test_device* %16)
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %20 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.test_config*, %struct.test_config** %4, align 8
  %23 = getelementptr inbounds %struct.test_config, %struct.test_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %18, %15, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @run_test_driver(%struct.kmod_test_device*) #1

declare dso_local i32 @run_test_fs_type(%struct.kmod_test_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
