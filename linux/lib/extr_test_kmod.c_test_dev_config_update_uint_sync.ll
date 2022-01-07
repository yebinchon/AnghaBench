; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_test_dev_config_update_uint_sync.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_test_dev_config_update_uint_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*, i8*, i64, i32*, i32 (%struct.kmod_test_device*)*)* @test_dev_config_update_uint_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_dev_config_update_uint_sync(%struct.kmod_test_device* %0, i8* %1, i64 %2, i32* %3, i32 (%struct.kmod_test_device*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kmod_test_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (%struct.kmod_test_device*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 (%struct.kmod_test_device*)* %4, i32 (%struct.kmod_test_device*)** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %13)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %61

21:                                               ; preds = %5
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @UINT_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %30 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i64, i64* %13, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32 (%struct.kmod_test_device*)*, i32 (%struct.kmod_test_device*)** %11, align 8
  %38 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %39 = call i32 %37(%struct.kmod_test_device* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %28
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32 (%struct.kmod_test_device*)*, i32 (%struct.kmod_test_device*)** %11, align 8
  %46 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %47 = call i32 %45(%struct.kmod_test_device* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %51 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %61

55:                                               ; preds = %28
  %56 = load %struct.kmod_test_device*, %struct.kmod_test_device** %7, align 8
  %57 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %55, %42, %25, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
