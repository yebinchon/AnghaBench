; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_power_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_power_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.pm_qos_request* }
%struct.pm_qos_request = type { i32 }

@PM_QOS_CPU_DMA_LATENCY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pm_qos_power_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_qos_power_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pm_qos_request*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call i64 @find_pm_qos_object_by_minor(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PM_QOS_CPU_DMA_LATENCY, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pm_qos_request* @kzalloc(i32 4, i32 %15)
  store %struct.pm_qos_request* %16, %struct.pm_qos_request** %7, align 8
  %17 = load %struct.pm_qos_request*, %struct.pm_qos_request** %7, align 8
  %18 = icmp ne %struct.pm_qos_request* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.pm_qos_request*, %struct.pm_qos_request** %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %26 = call i32 @pm_qos_add_request(%struct.pm_qos_request* %23, i64 %24, i32 %25)
  %27 = load %struct.pm_qos_request*, %struct.pm_qos_request** %7, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  store %struct.pm_qos_request* %27, %struct.pm_qos_request** %29, align 8
  store i32 0, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %22, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @find_pm_qos_object_by_minor(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.pm_qos_request* @kzalloc(i32, i32) #1

declare dso_local i32 @pm_qos_add_request(%struct.pm_qos_request*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
