; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_register_test_dev_kmod.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_register_test_dev_kmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@reg_dev_mutex = common dso_local global i32 0, align 4
@num_test_devs = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"reached limit of number of test devices\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not register misc device: %d\0A\00", align 1
@reg_test_devs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"interface ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmod_test_device* ()* @register_test_dev_kmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmod_test_device* @register_test_dev_kmod() #0 {
  %1 = alloca %struct.kmod_test_device*, align 8
  %2 = alloca i32, align 4
  store %struct.kmod_test_device* null, %struct.kmod_test_device** %1, align 8
  %3 = call i32 @mutex_lock(i32* @reg_dev_mutex)
  %4 = load i64, i64* @num_test_devs, align 8
  %5 = add nsw i64 %4, 1
  %6 = load i64, i64* @INT_MAX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %43

10:                                               ; preds = %0
  %11 = load i64, i64* @num_test_devs, align 8
  %12 = call %struct.kmod_test_device* @alloc_test_dev_kmod(i64 %11)
  store %struct.kmod_test_device* %12, %struct.kmod_test_device** %1, align 8
  %13 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %14 = icmp ne %struct.kmod_test_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %43

16:                                               ; preds = %10
  %17 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %18 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %17, i32 0, i32 2
  %19 = call i32 @misc_register(%struct.TYPE_2__* %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %26 = call i32 @free_test_dev_kmod(%struct.kmod_test_device* %25)
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %29 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %33 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %35 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %35, i32* @reg_test_devs)
  %37 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  %38 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i64, i64* @num_test_devs, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* @num_test_devs, align 8
  br label %43

43:                                               ; preds = %27, %22, %15, %8
  %44 = call i32 @mutex_unlock(i32* @reg_dev_mutex)
  %45 = load %struct.kmod_test_device*, %struct.kmod_test_device** %1, align 8
  ret %struct.kmod_test_device* %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.kmod_test_device* @alloc_test_dev_kmod(i64) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

declare dso_local i32 @free_test_dev_kmod(%struct.kmod_test_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
