; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_set_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.batadv_softif_vlan** }
%struct.nlattr = type { i32 }
%struct.batadv_softif_vlan = type { i32 }
%struct.batadv_priv = type { i32 }

@BATADV_ATTR_AP_ISOLATION_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @batadv_netlink_set_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_netlink_set_vlan(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.batadv_softif_vlan*, align 8
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 1
  %10 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %9, align 8
  %11 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %10, i64 1
  %12 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %11, align 8
  store %struct.batadv_softif_vlan* %12, %struct.batadv_softif_vlan** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.batadv_softif_vlan**, %struct.batadv_softif_vlan*** %14, align 8
  %16 = getelementptr inbounds %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %15, i64 0
  %17 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %16, align 8
  %18 = bitcast %struct.batadv_softif_vlan* %17 to %struct.batadv_priv*
  store %struct.batadv_priv* %18, %struct.batadv_priv** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.nlattr**, %struct.nlattr*** %20, align 8
  %22 = load i64, i64* @BATADV_ATTR_AP_ISOLATION_ENABLED, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load %struct.nlattr**, %struct.nlattr*** %28, align 8
  %30 = load i64, i64* @BATADV_ATTR_AP_ISOLATION_ENABLED, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  store %struct.nlattr* %32, %struct.nlattr** %7, align 8
  %33 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %5, align 8
  %34 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %33, i32 0, i32 0
  %35 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %36 = call i32 @nla_get_u8(%struct.nlattr* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @atomic_set(i32* %34, i32 %40)
  br label %42

42:                                               ; preds = %26, %2
  %43 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %44 = bitcast %struct.batadv_priv* %43 to %struct.batadv_softif_vlan*
  %45 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %5, align 8
  %46 = call i32 @batadv_netlink_notify_vlan(%struct.batadv_softif_vlan* %44, %struct.batadv_softif_vlan* %45)
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @batadv_netlink_notify_vlan(%struct.batadv_softif_vlan*, %struct.batadv_softif_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
