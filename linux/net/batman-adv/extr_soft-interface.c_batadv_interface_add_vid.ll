; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_interface_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_interface_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_softif_vlan = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BATADV_VLAN_HAS_TAG = common dso_local global i16 0, align 2
@BATADV_NULL_IFINDEX = common dso_local global i32 0, align 4
@BATADV_NO_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i16)* @batadv_interface_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_interface_add_vid(%struct.net_device* %0, i64 %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.batadv_softif_vlan*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i16 %2, i16* %7, align 2
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.batadv_priv* %12, %struct.batadv_priv** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @ETH_P_8021Q, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %67

20:                                               ; preds = %3
  %21 = load i16, i16* @BATADV_VLAN_HAS_TAG, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %7, align 2
  %27 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %28 = load i16, i16* %7, align 2
  %29 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %27, i16 zeroext %28)
  store %struct.batadv_softif_vlan* %29, %struct.batadv_softif_vlan** %9, align 8
  %30 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %31 = icmp ne %struct.batadv_softif_vlan* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %34 = load i16, i16* %7, align 2
  %35 = call i32 @batadv_softif_create_vlan(%struct.batadv_priv* %33, i16 zeroext %34)
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %20
  %37 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %38 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %43 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %46 = call i32 @batadv_sysfs_add_vlan(%struct.TYPE_3__* %44, %struct.batadv_softif_vlan* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %9, align 8
  %51 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %56 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %59 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i16, i16* %7, align 2
  %64 = load i32, i32* @BATADV_NULL_IFINDEX, align 4
  %65 = load i32, i32* @BATADV_NO_MARK, align 4
  %66 = call i32 @batadv_tt_local_add(%struct.TYPE_3__* %57, i32 %62, i16 zeroext %63, i32 %64, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %54, %49, %32, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i32 @batadv_softif_create_vlan(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i32 @batadv_sysfs_add_vlan(%struct.TYPE_3__*, %struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_tt_local_add(%struct.TYPE_3__*, i32, i16 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
