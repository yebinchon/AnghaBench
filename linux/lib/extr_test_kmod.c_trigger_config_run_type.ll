; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_trigger_config_run_type.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_trigger_config_run_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, i32, %struct.test_config }
%struct.test_config = type { i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*, i32, i8*)* @trigger_config_run_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_config_run_type(%struct.kmod_test_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmod_test_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.test_config*, align 8
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %11 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %10, i32 0, i32 2
  store %struct.test_config* %11, %struct.test_config** %9, align 8
  %12 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %13 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %40 [
    i32 129, label %16
    i32 128, label %28
  ]

16:                                               ; preds = %3
  %17 = load %struct.test_config*, %struct.test_config** %9, align 8
  %18 = getelementptr inbounds %struct.test_config, %struct.test_config* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree_const(i32* %19)
  %21 = load %struct.test_config*, %struct.test_config** %9, align 8
  %22 = getelementptr inbounds %struct.test_config, %struct.test_config* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.test_config*, %struct.test_config** %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32 @config_copy_test_driver_name(%struct.test_config* %23, i8* %24, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.test_config*, %struct.test_config** %9, align 8
  %30 = getelementptr inbounds %struct.test_config, %struct.test_config* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree_const(i32* %31)
  %33 = load %struct.test_config*, %struct.test_config** %9, align 8
  %34 = getelementptr inbounds %struct.test_config, %struct.test_config* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.test_config*, %struct.test_config** %9, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @config_copy_test_fs(%struct.test_config* %35, i8* %36, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %42 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %28, %16
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.test_config*, %struct.test_config** %9, align 8
  %49 = getelementptr inbounds %struct.test_config, %struct.test_config* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %51 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %46
  %61 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %62 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %55
  %66 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %67 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %69 = call i32 @trigger_config_run(%struct.kmod_test_device* %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %60, %40
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree_const(i32*) #1

declare dso_local i32 @config_copy_test_driver_name(%struct.test_config*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @config_copy_test_fs(%struct.test_config*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trigger_config_run(%struct.kmod_test_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
