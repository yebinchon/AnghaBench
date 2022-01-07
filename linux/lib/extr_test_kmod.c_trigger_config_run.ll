; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_trigger_config_run.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_trigger_config_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i32, i32, %struct.test_config }
%struct.test_config = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"General test result: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*)* @trigger_config_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_config_run(%struct.kmod_test_device* %0) #0 {
  %2 = alloca %struct.kmod_test_device*, align 8
  %3 = alloca %struct.test_config*, align 8
  %4 = alloca i32, align 4
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %2, align 8
  %5 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %6 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %5, i32 0, i32 3
  store %struct.test_config* %6, %struct.test_config** %3, align 8
  %7 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %8 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %11 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %14 = call i32 @__trigger_config_run(%struct.kmod_test_device* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %20 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.test_config*, %struct.test_config** %3, align 8
  %23 = getelementptr inbounds %struct.test_config, %struct.test_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %28 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %31 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__trigger_config_run(%struct.kmod_test_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
