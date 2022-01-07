; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_internal_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_internal_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @internal_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.TYPE_4__* @internal_dev_priv(%struct.net_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @ovs_vport_receive(i32 %15, %struct.sk_buff* %16, i32* null)
  store i32 %17, i32* %6, align 4
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %28)
  store %struct.pcpu_sw_netstats* %29, %struct.pcpu_sw_netstats** %7, align 8
  %30 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %31 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %30, i32 0, i32 1
  %32 = call i32 @u64_stats_update_begin(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %35 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %39 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %43 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %42, i32 0, i32 1
  %44 = call i32 @u64_stats_update_end(i32* %43)
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %25
  %52 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %52
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ovs_vport_receive(i32, %struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_4__* @internal_dev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
