; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_dev_netdev_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_offload_dev_netdev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offload_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bpf_offload_netdev = type { i32, i32, i32, i32, %struct.bpf_offload_dev*, %struct.net_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4
@offdevs = common dso_local global i32 0, align 4
@offdevs_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to register for BPF offload\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_offload_dev_netdev_register(%struct.bpf_offload_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_offload_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bpf_offload_netdev*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_offload_dev* %0, %struct.bpf_offload_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bpf_offload_netdev* @kzalloc(i32 32, i32 %8)
  store %struct.bpf_offload_netdev* %9, %struct.bpf_offload_netdev** %6, align 8
  %10 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %11 = icmp ne %struct.bpf_offload_netdev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %18 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %17, i32 0, i32 5
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %4, align 8
  %20 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %21 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %20, i32 0, i32 4
  store %struct.bpf_offload_dev* %19, %struct.bpf_offload_dev** %21, align 8
  %22 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %23 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = call i32 @down_write(i32* @bpf_devs_lock)
  %29 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %29, i32 0, i32 1
  %31 = load i32, i32* @offdevs_params, align 4
  %32 = call i32 @rhashtable_insert_fast(i32* @offdevs, i32* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %15
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netdev_warn(%struct.net_device* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %45

38:                                               ; preds = %15
  %39 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %40 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %39, i32 0, i32 0
  %41 = load %struct.bpf_offload_dev*, %struct.bpf_offload_dev** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_offload_dev, %struct.bpf_offload_dev* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %40, i32* %42)
  %44 = call i32 @up_write(i32* @bpf_devs_lock)
  store i32 0, i32* %3, align 4
  br label %50

45:                                               ; preds = %35
  %46 = call i32 @up_write(i32* @bpf_devs_lock)
  %47 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %6, align 8
  %48 = call i32 @kfree(%struct.bpf_offload_netdev* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %38, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.bpf_offload_netdev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.bpf_offload_netdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
