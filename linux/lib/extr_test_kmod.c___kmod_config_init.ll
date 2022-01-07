; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c___kmod_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c___kmod_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, %struct.test_config }
%struct.test_config = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TEST_START_DRIVER = common dso_local global i32 0, align 4
@TEST_START_TEST_FS = common dso_local global i32 0, align 4
@TEST_START_TEST_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*)* @__kmod_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kmod_config_init(%struct.kmod_test_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmod_test_device*, align 8
  %4 = alloca %struct.test_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %3, align 8
  %7 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %8 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %7, i32 0, i32 1
  store %struct.test_config* %8, %struct.test_config** %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.test_config*, %struct.test_config** %4, align 8
  %12 = call i32 @__kmod_config_free(%struct.test_config* %11)
  %13 = load %struct.test_config*, %struct.test_config** %4, align 8
  %14 = load i32, i32* @TEST_START_DRIVER, align 4
  %15 = load i32, i32* @TEST_START_DRIVER, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = call i32 @config_copy_test_driver_name(%struct.test_config* %13, i32 %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TEST_START_DRIVER, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.test_config*, %struct.test_config** %4, align 8
  %25 = load i32, i32* @TEST_START_TEST_FS, align 4
  %26 = load i32, i32* @TEST_START_TEST_FS, align 4
  %27 = call i32 @strlen(i32 %26)
  %28 = call i32 @config_copy_test_fs(%struct.test_config* %24, i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TEST_START_TEST_FS, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %51

34:                                               ; preds = %23
  %35 = call i32 (...) @kmod_init_test_thread_limit()
  %36 = load %struct.test_config*, %struct.test_config** %4, align 8
  %37 = getelementptr inbounds %struct.test_config, %struct.test_config* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.test_config*, %struct.test_config** %4, align 8
  %39 = getelementptr inbounds %struct.test_config, %struct.test_config* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @TEST_START_TEST_CASE, align 4
  %41 = load %struct.test_config*, %struct.test_config** %4, align 8
  %42 = getelementptr inbounds %struct.test_config, %struct.test_config* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %44 = call i32 @kmod_config_sync_info(%struct.kmod_test_device* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %51

48:                                               ; preds = %34
  %49 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %50 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %61

51:                                               ; preds = %47, %33, %22
  %52 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %53 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %55 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.test_config*, %struct.test_config** %4, align 8
  %59 = call i32 @__kmod_config_free(%struct.test_config* %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %51, %48
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @__kmod_config_free(%struct.test_config*) #1

declare dso_local i32 @config_copy_test_driver_name(%struct.test_config*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @config_copy_test_fs(%struct.test_config*, i32, i32) #1

declare dso_local i32 @kmod_init_test_thread_limit(...) #1

declare dso_local i32 @kmod_config_sync_info(%struct.kmod_test_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
