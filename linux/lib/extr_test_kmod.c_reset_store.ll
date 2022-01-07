; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kmod_test_device = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"could not alloc settings for config trigger: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kmod_test_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.kmod_test_device* @dev_to_test_dev(%struct.device* %11)
  store %struct.kmod_test_device* %12, %struct.kmod_test_device** %9, align 8
  %13 = load %struct.kmod_test_device*, %struct.kmod_test_device** %9, align 8
  %14 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.kmod_test_device*, %struct.kmod_test_device** %9, align 8
  %17 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.kmod_test_device*, %struct.kmod_test_device** %9, align 8
  %20 = call i32 @__kmod_config_init(%struct.kmod_test_device* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %34

29:                                               ; preds = %4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.kmod_test_device*, %struct.kmod_test_device** %9, align 8
  %36 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.kmod_test_device*, %struct.kmod_test_device** %9, align 8
  %39 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local %struct.kmod_test_device* @dev_to_test_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__kmod_config_init(%struct.kmod_test_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
