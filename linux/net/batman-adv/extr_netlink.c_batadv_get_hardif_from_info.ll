; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_get_hardif_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_get_hardif_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64 }
%struct.batadv_priv = type { i64 }
%struct.net = type { i32 }
%struct.genl_info = type { i32* }
%struct.net_device = type { i32 }

@BATADV_ATTR_HARD_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_hard_iface* (%struct.batadv_priv*, %struct.net*, %struct.genl_info*)* @batadv_get_hardif_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_hard_iface* @batadv_get_hardif_from_info(%struct.batadv_priv* %0, %struct.net* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @BATADV_ATTR_HARD_IFINDEX, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.batadv_hard_iface* @ERR_PTR(i32 %20)
  store %struct.batadv_hard_iface* %21, %struct.batadv_hard_iface** %4, align 8
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @BATADV_ATTR_HARD_IFINDEX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nla_get_u32(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.net_device* @dev_get_by_index(%struct.net* %30, i32 %31)
  store %struct.net_device* %32, %struct.net_device** %9, align 8
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.batadv_hard_iface* @ERR_PTR(i32 %37)
  store %struct.batadv_hard_iface* %38, %struct.batadv_hard_iface** %4, align 8
  br label %67

39:                                               ; preds = %22
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %40)
  store %struct.batadv_hard_iface* %41, %struct.batadv_hard_iface** %8, align 8
  %42 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %43 = icmp ne %struct.batadv_hard_iface* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %61

45:                                               ; preds = %39
  %46 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %47 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %50 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.net_device*, %struct.net_device** %9, align 8
  %56 = call i32 @dev_put(%struct.net_device* %55)
  %57 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  store %struct.batadv_hard_iface* %57, %struct.batadv_hard_iface** %4, align 8
  br label %67

58:                                               ; preds = %53
  %59 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %60 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %59)
  br label %61

61:                                               ; preds = %58, %44
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = call i32 @dev_put(%struct.net_device* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.batadv_hard_iface* @ERR_PTR(i32 %65)
  store %struct.batadv_hard_iface* %66, %struct.batadv_hard_iface** %4, align 8
  br label %67

67:                                               ; preds = %61, %54, %35, %18
  %68 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  ret %struct.batadv_hard_iface* %68
}

declare dso_local %struct.batadv_hard_iface* @ERR_PTR(i32) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
