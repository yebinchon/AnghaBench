; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net-sysfs.c_netdev_register_kobject.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net-sysfs.c_netdev_register_kobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32, %struct.attribute_group**, %struct.device }
%struct.attribute_group = type { i32 }
%struct.device = type { %struct.attribute_group**, %struct.net_device*, i32* }

@net_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@netstat_group = common dso_local global i32 0, align 4
@wireless_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_register_kobject(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 4
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 3
  %11 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  store %struct.attribute_group** %11, %struct.attribute_group*** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @device_initialize(%struct.device* %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 2
  store i32* @net_class, i32** %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  store %struct.attribute_group** %19, %struct.attribute_group*** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_set_name(%struct.device* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @device_add(%struct.device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @register_queue_kobjects(%struct.net_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @device_del(%struct.device* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @pm_runtime_set_memalloc_noio(%struct.device* %43, i32 1)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %38, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @register_queue_kobjects(%struct.net_device*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_memalloc_noio(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
