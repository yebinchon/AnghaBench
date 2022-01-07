; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.can_dev_rcv_lists = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.can_dev_rcv_lists*, %struct.can_pkg_stats* }
%struct.can_pkg_stats = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@skbcounter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*)* @can_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_receive(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_dev_rcv_lists*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.can_pkg_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net* @dev_net(%struct.net_device* %9)
  store %struct.net* %10, %struct.net** %6, align 8
  %11 = load %struct.net*, %struct.net** %6, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %13, align 8
  store %struct.can_pkg_stats* %14, %struct.can_pkg_stats** %7, align 8
  %15 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %7, align 8
  %16 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %7, align 8
  %20 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %30, %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call %struct.TYPE_4__* @can_skb_prv(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = call i64 @atomic_inc_return(i32* @skbcounter)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call %struct.TYPE_4__* @can_skb_prv(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %23

35:                                               ; preds = %23
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.net*, %struct.net** %6, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.can_dev_rcv_lists*, %struct.can_dev_rcv_lists** %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i32 @can_rcv_filter(%struct.can_dev_rcv_lists* %40, %struct.sk_buff* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.net*, %struct.net** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call %struct.can_dev_rcv_lists* @can_dev_rcv_lists_find(%struct.net* %43, %struct.net_device* %44)
  store %struct.can_dev_rcv_lists* %45, %struct.can_dev_rcv_lists** %5, align 8
  %46 = load %struct.can_dev_rcv_lists*, %struct.can_dev_rcv_lists** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call i32 @can_rcv_filter(%struct.can_dev_rcv_lists* %46, %struct.sk_buff* %47)
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i32 @consume_skb(%struct.sk_buff* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %35
  %57 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %7, align 8
  %58 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.can_pkg_stats*, %struct.can_pkg_stats** %7, align 8
  %62 = getelementptr inbounds %struct.can_pkg_stats, %struct.can_pkg_stats* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %35
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @can_skb_prv(%struct.sk_buff*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @can_rcv_filter(%struct.can_dev_rcv_lists*, %struct.sk_buff*) #1

declare dso_local %struct.can_dev_rcv_lists* @can_dev_rcv_lists_find(%struct.net*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
