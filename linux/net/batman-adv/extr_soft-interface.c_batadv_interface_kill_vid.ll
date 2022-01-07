; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_interface_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_interface_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_softif_vlan = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BATADV_VLAN_HAS_TAG = common dso_local global i16 0, align 2
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i16)* @batadv_interface_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_interface_kill_vid(%struct.net_device* %0, i64 %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.batadv_softif_vlan*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i16 %2, i16* %7, align 2
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.batadv_priv* %11, %struct.batadv_priv** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @ETH_P_8021Q, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @BATADV_VLAN_HAS_TAG, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i16
  %27 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %20, i16 zeroext %26)
  store %struct.batadv_softif_vlan* %27, %struct.batadv_softif_vlan** %9, align 8
  %28 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %29 = icmp ne %struct.batadv_softif_vlan* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %19
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %35 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %36 = call i32 @batadv_softif_destroy_vlan(%struct.batadv_priv* %34, %struct.batadv_softif_vlan* %35)
  %37 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %38 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %30, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i32 @batadv_softif_destroy_vlan(%struct.batadv_priv*, %struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
