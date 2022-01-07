; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_skb_tx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_skb_tx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, %struct.net_device*, %struct.sk_buff*)* @skb_tx_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skb_tx_hash(%struct.net_device* %0, %struct.net_device* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @netdev_get_prio_tc_map(%struct.net_device* %20, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %19, %3
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i64 @skb_rx_queue_recorded(%struct.sk_buff* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i64 @skb_get_rx_queue(%struct.sk_buff* %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %53, %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp sge i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %46

57:                                               ; preds = %46
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %4, align 8
  br label %68

61:                                               ; preds = %39
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @skb_get_hash(%struct.sk_buff* %62)
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @reciprocal_scale(i32 %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i64 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local i64 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i64 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @reciprocal_scale(i32, i64) #1

declare dso_local i32 @skb_get_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
