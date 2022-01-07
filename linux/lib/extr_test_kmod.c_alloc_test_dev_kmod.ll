; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_alloc_test_dev_kmod.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_alloc_test_dev_kmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, %struct.miscdevice, i32, i32, i32, i32 }
%struct.miscdevice = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot alloc kmod_config_init()\0A\00", align 1
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"test_kmod%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot alloc misc_dev->name\0A\00", align 1
@test_dev_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmod_test_device* (i32)* @alloc_test_dev_kmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmod_test_device* @alloc_test_dev_kmod(i32 %0) #0 {
  %2 = alloca %struct.kmod_test_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmod_test_device*, align 8
  %6 = alloca %struct.miscdevice*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call %struct.kmod_test_device* @vzalloc(i32 32)
  store %struct.kmod_test_device* %7, %struct.kmod_test_device** %5, align 8
  %8 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %9 = icmp ne %struct.kmod_test_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %13 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %12, i32 0, i32 5
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %16 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %15, i32 0, i32 4
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %19 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %22 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %21, i32 0, i32 2
  %23 = call i32 @init_completion(i32* %22)
  %24 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %25 = call i32 @kmod_config_init(%struct.kmod_test_device* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %60

30:                                               ; preds = %11
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %33 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %35 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %34, i32 0, i32 1
  store %struct.miscdevice* %35, %struct.miscdevice** %6, align 8
  %36 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %37 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %38 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @kasprintf(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %43 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %45 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %30
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %55

50:                                               ; preds = %30
  %51 = load i32, i32* @test_dev_groups, align 4
  %52 = load %struct.miscdevice*, %struct.miscdevice** %6, align 8
  %53 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  store %struct.kmod_test_device* %54, %struct.kmod_test_device** %2, align 8
  br label %64

55:                                               ; preds = %48
  %56 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %57 = call i32 @free_test_dev_info(%struct.kmod_test_device* %56)
  %58 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %59 = call i32 @kmod_config_free(%struct.kmod_test_device* %58)
  br label %60

60:                                               ; preds = %55, %28
  %61 = load %struct.kmod_test_device*, %struct.kmod_test_device** %5, align 8
  %62 = call i32 @vfree(%struct.kmod_test_device* %61)
  store %struct.kmod_test_device* null, %struct.kmod_test_device** %5, align 8
  br label %63

63:                                               ; preds = %60, %10
  store %struct.kmod_test_device* null, %struct.kmod_test_device** %2, align 8
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  ret %struct.kmod_test_device* %65
}

declare dso_local %struct.kmod_test_device* @vzalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kmod_config_init(%struct.kmod_test_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @free_test_dev_info(%struct.kmod_test_device*) #1

declare dso_local i32 @kmod_config_free(%struct.kmod_test_device*) #1

declare dso_local i32 @vfree(%struct.kmod_test_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
