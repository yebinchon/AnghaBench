; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smcd_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smcd_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.smcd_dev*, i32, i32, i32, i32, %struct.smcd_ops*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.smcd_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@smcd_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ism_evt_wq-%s)\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smcd_dev* @smcd_alloc_dev(%struct.device* %0, i8* %1, %struct.smcd_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.smcd_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.smcd_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smcd_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.smcd_ops* %2, %struct.smcd_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.smcd_dev* @kzalloc(i32 48, i32 %11)
  store %struct.smcd_dev* %12, %struct.smcd_dev** %10, align 8
  %13 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %14 = icmp ne %struct.smcd_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.smcd_dev* null, %struct.smcd_dev** %5, align 8
  br label %77

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.smcd_dev* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %21 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %20, i32 0, i32 0
  store %struct.smcd_dev* %19, %struct.smcd_dev** %21, align 8
  %22 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %23 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %22, i32 0, i32 0
  %24 = load %struct.smcd_dev*, %struct.smcd_dev** %23, align 8
  %25 = icmp ne %struct.smcd_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %28 = call i32 @kfree(%struct.smcd_dev* %27)
  store %struct.smcd_dev* null, %struct.smcd_dev** %5, align 8
  br label %77

29:                                               ; preds = %16
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %32 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.device* %30, %struct.device** %33, align 8
  %34 = load i32, i32* @smcd_release, align 4
  %35 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %36 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %39 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %38, i32 0, i32 6
  %40 = call i32 @device_initialize(%struct.TYPE_3__* %39)
  %41 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %42 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %41, i32 0, i32 6
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @dev_set_name(%struct.TYPE_3__* %42, i8* %43)
  %45 = load %struct.smcd_ops*, %struct.smcd_ops** %8, align 8
  %46 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %47 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %46, i32 0, i32 5
  store %struct.smcd_ops* %45, %struct.smcd_ops** %47, align 8
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %50 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @smc_pnetid_by_dev_port(%struct.device* %48, i32 0, i32 %51)
  %53 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %54 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %53, i32 0, i32 3
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %57 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %56, i32 0, i32 2
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %60)
  %62 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %63 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %65 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %29
  %69 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %70 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %69, i32 0, i32 0
  %71 = load %struct.smcd_dev*, %struct.smcd_dev** %70, align 8
  %72 = call i32 @kfree(%struct.smcd_dev* %71)
  %73 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  %74 = call i32 @kfree(%struct.smcd_dev* %73)
  store %struct.smcd_dev* null, %struct.smcd_dev** %5, align 8
  br label %77

75:                                               ; preds = %29
  %76 = load %struct.smcd_dev*, %struct.smcd_dev** %10, align 8
  store %struct.smcd_dev* %76, %struct.smcd_dev** %5, align 8
  br label %77

77:                                               ; preds = %75, %68, %26, %15
  %78 = load %struct.smcd_dev*, %struct.smcd_dev** %5, align 8
  ret %struct.smcd_dev* %78
}

declare dso_local %struct.smcd_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.smcd_dev* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.smcd_dev*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @smc_pnetid_by_dev_port(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
