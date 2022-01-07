; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_get_vlan_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_get_vlan_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_softif_vlan = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.net = type { i32 }
%struct.genl_info = type { i32* }

@BATADV_ATTR_VLANID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BATADV_VLAN_HAS_TAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_softif_vlan* (%struct.batadv_priv*, %struct.net*, %struct.genl_info*)* @batadv_get_vlan_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_softif_vlan* @batadv_get_vlan_from_info(%struct.batadv_priv* %0, %struct.net* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.batadv_softif_vlan*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.batadv_softif_vlan*, align 8
  %9 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @BATADV_ATTR_VLANID, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.batadv_softif_vlan* @ERR_PTR(i32 %19)
  store %struct.batadv_softif_vlan* %20, %struct.batadv_softif_vlan** %4, align 8
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @BATADV_ATTR_VLANID, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nla_get_u16(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BATADV_VLAN_HAS_TAG, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %29, i32 %32)
  store %struct.batadv_softif_vlan* %33, %struct.batadv_softif_vlan** %8, align 8
  %34 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %8, align 8
  %35 = icmp ne %struct.batadv_softif_vlan* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.batadv_softif_vlan* @ERR_PTR(i32 %38)
  store %struct.batadv_softif_vlan* %39, %struct.batadv_softif_vlan** %4, align 8
  br label %42

40:                                               ; preds = %21
  %41 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %8, align 8
  store %struct.batadv_softif_vlan* %41, %struct.batadv_softif_vlan** %4, align 8
  br label %42

42:                                               ; preds = %40, %36, %17
  %43 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %4, align 8
  ret %struct.batadv_softif_vlan* %43
}

declare dso_local %struct.batadv_softif_vlan* @ERR_PTR(i32) #1

declare dso_local i32 @nla_get_u16(i32) #1

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
