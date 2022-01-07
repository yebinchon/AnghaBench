; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_set_hardif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_set_hardif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.batadv_priv** }
%struct.nlattr = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__ }

@BATADV_ATTR_ELP_INTERVAL = common dso_local global i64 0, align 8
@BATADV_ATTR_THROUGHPUT_OVERRIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @batadv_netlink_set_hardif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_netlink_set_hardif(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 1
  %9 = load %struct.batadv_priv**, %struct.batadv_priv*** %8, align 8
  %10 = getelementptr inbounds %struct.batadv_priv*, %struct.batadv_priv** %9, i64 1
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %12 = bitcast %struct.batadv_priv* %11 to %struct.batadv_hard_iface*
  store %struct.batadv_hard_iface* %12, %struct.batadv_hard_iface** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.batadv_priv**, %struct.batadv_priv*** %14, align 8
  %16 = getelementptr inbounds %struct.batadv_priv*, %struct.batadv_priv** %15, i64 0
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %16, align 8
  store %struct.batadv_priv* %17, %struct.batadv_priv** %6, align 8
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %19 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %20 = bitcast %struct.batadv_hard_iface* %19 to %struct.batadv_priv*
  %21 = call i32 @batadv_netlink_notify_hardif(%struct.batadv_priv* %18, %struct.batadv_priv* %20)
  ret i32 0
}

declare dso_local i32 @batadv_netlink_notify_hardif(%struct.batadv_priv*, %struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
