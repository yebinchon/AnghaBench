; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_ethtool_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_ethtool_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ts_info = type { i32, i32 }
%struct.vlan_dev_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.phy_device*, %struct.ethtool_ops* }
%struct.phy_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.phy_device*, %struct.ethtool_ts_info*)* }
%struct.ethtool_ops = type { i32 (%struct.TYPE_4__*, %struct.ethtool_ts_info*)* }

@SOF_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_SOFTWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @vlan_ethtool_get_ts_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_ethtool_get_ts_info(%struct.net_device* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ts_info*, align 8
  %6 = alloca %struct.vlan_dev_priv*, align 8
  %7 = alloca %struct.ethtool_ops*, align 8
  %8 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %9)
  store %struct.vlan_dev_priv* %10, %struct.vlan_dev_priv** %6, align 8
  %11 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %12 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.ethtool_ops*, %struct.ethtool_ops** %14, align 8
  store %struct.ethtool_ops* %15, %struct.ethtool_ops** %7, align 8
  %16 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %17 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.phy_device*, %struct.phy_device** %19, align 8
  store %struct.phy_device* %20, %struct.phy_device** %8, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %22 = icmp ne %struct.phy_device* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.phy_device*, %struct.ethtool_ts_info*)*, i32 (%struct.phy_device*, %struct.ethtool_ts_info*)** %32, align 8
  %34 = icmp ne i32 (%struct.phy_device*, %struct.ethtool_ts_info*)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.phy_device*, %struct.ethtool_ts_info*)*, i32 (%struct.phy_device*, %struct.ethtool_ts_info*)** %39, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %42 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %43 = call i32 %40(%struct.phy_device* %41, %struct.ethtool_ts_info* %42)
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %28, %23, %2
  %45 = load %struct.ethtool_ops*, %struct.ethtool_ops** %7, align 8
  %46 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_4__*, %struct.ethtool_ts_info*)*, i32 (%struct.TYPE_4__*, %struct.ethtool_ts_info*)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_4__*, %struct.ethtool_ts_info*)* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ethtool_ops*, %struct.ethtool_ops** %7, align 8
  %51 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_4__*, %struct.ethtool_ts_info*)*, i32 (%struct.TYPE_4__*, %struct.ethtool_ts_info*)** %51, align 8
  %53 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %54 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %57 = call i32 %52(%struct.TYPE_4__* %55, %struct.ethtool_ts_info* %56)
  store i32 %57, i32* %3, align 4
  br label %68

58:                                               ; preds = %44
  %59 = load i32, i32* @SOF_TIMESTAMPING_RX_SOFTWARE, align 4
  %60 = load i32, i32* @SOF_TIMESTAMPING_SOFTWARE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  br label %66

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %49, %35
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
