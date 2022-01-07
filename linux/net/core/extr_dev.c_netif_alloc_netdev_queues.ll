; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_alloc_netdev_queues.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_alloc_netdev_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.netdev_queue* }
%struct.netdev_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netdev_init_one_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netif_alloc_netdev_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netif_alloc_netdev_queues(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ugt i32 %16, 65535
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.netdev_queue* @kvzalloc(i64 %22, i32 %25)
  store %struct.netdev_queue* %26, %struct.netdev_queue** %5, align 8
  %27 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %28 = icmp ne %struct.netdev_queue* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %21
  %33 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  store %struct.netdev_queue* %33, %struct.netdev_queue** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i32, i32* @netdev_init_one_queue, align 4
  %38 = call i32 @netdev_for_each_tx_queue(%struct.net_device* %36, i32 %37, i32* null)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_init(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %29, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.netdev_queue* @kvzalloc(i64, i32) #1

declare dso_local i32 @netdev_for_each_tx_queue(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
