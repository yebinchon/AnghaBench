; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_alloc_rx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_alloc_rx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.netdev_rx_queue* }
%struct.netdev_rx_queue = type { i32, %struct.net_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netif_alloc_rx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netif_alloc_rx_queues(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_rx_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.netdev_rx_queue* @kvzalloc(i64 %19, i32 %22)
  store %struct.netdev_rx_queue* %23, %struct.netdev_rx_queue** %6, align 8
  %24 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %6, align 8
  %25 = icmp ne %struct.netdev_rx_queue* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %1
  %30 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %6, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  store %struct.netdev_rx_queue* %30, %struct.netdev_rx_queue** %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %56, %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %39, i64 %41
  %43 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %42, i32 0, i32 1
  store %struct.net_device* %38, %struct.net_device** %43, align 8
  %44 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %44, i64 %46
  %48 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %47, i32 0, i32 0
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @xdp_rxq_info_reg(i32* %48, %struct.net_device* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %60

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %33

59:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %80

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %4, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %66, i64 %68
  %70 = getelementptr inbounds %struct.netdev_rx_queue, %struct.netdev_rx_queue* %69, i32 0, i32 0
  %71 = call i32 @xdp_rxq_info_unreg(i32* %70)
  br label %61

72:                                               ; preds = %61
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load %struct.netdev_rx_queue*, %struct.netdev_rx_queue** %74, align 8
  %76 = call i32 @kvfree(%struct.netdev_rx_queue* %75)
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  store %struct.netdev_rx_queue* null, %struct.netdev_rx_queue** %78, align 8
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %59, %26
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.netdev_rx_queue* @kvzalloc(i64, i32) #1

declare dso_local i32 @xdp_rxq_info_reg(i32*, %struct.net_device*, i32) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @kvfree(%struct.netdev_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
