; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_flags_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_flags_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64*, i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_mcast_flags_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 4
  %9 = alloca %struct.batadv_priv*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %6, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NETLINK_CB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64* %23, i64** %10, align 8
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64* %27, i64** %11, align 8
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %29 = call i32 @batadv_mcast_netlink_get_primary(%struct.netlink_callback* %28, %struct.batadv_hard_iface** %6)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %36 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.batadv_priv* @netdev_priv(i32 %37)
  store %struct.batadv_priv* %38, %struct.batadv_priv** %9, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = call i32 @__batadv_mcast_flags_dump(%struct.sk_buff* %39, i32 %40, %struct.netlink_callback* %41, %struct.batadv_priv* %42, i64* %43, i64* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %47 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %34, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @batadv_mcast_netlink_get_primary(%struct.netlink_callback*, %struct.batadv_hard_iface**) #1

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i32 @__batadv_mcast_flags_dump(%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_priv*, i64*, i64*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
