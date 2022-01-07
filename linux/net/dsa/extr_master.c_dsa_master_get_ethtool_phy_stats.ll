; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_ethtool_phy_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_ethtool_phy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.dsa_port* }
%struct.dsa_port = type { i32, %struct.dsa_switch*, %struct.ethtool_ops* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32*)* }
%struct.ethtool_ops = type { i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)* }
%struct.ethtool_stats = type { i32 }

@ETH_SS_PHY_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @dsa_master_get_ethtool_phy_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_master_get_ethtool_phy_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dsa_port*, align 8
  %8 = alloca %struct.ethtool_ops*, align 8
  %9 = alloca %struct.dsa_switch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.dsa_port*, %struct.dsa_port** %13, align 8
  store %struct.dsa_port* %14, %struct.dsa_port** %7, align 8
  %15 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %16 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %15, i32 0, i32 2
  %17 = load %struct.ethtool_ops*, %struct.ethtool_ops** %16, align 8
  store %struct.ethtool_ops* %17, %struct.ethtool_ops** %8, align 8
  %18 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %19 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %18, i32 0, i32 1
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %19, align 8
  store %struct.dsa_switch* %20, %struct.dsa_switch** %9, align 8
  %21 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %22 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %30 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %29, i32 0, i32 1
  %31 = load i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)* %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @phy_ethtool_get_sset_count(i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ethtool_stats*, %struct.ethtool_stats** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @phy_ethtool_get_stats(i64 %43, %struct.ethtool_stats* %44, i32* %45)
  br label %47

47:                                               ; preds = %40, %33
  br label %73

48:                                               ; preds = %28, %3
  %49 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %50 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.net_device*, i32)* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %55 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %54, i32 0, i32 1
  %56 = load i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)** %55, align 8
  %57 = icmp ne i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %60 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %59, i32 0, i32 0
  %61 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @ETH_SS_PHY_STATS, align 4
  %64 = call i32 %61(%struct.net_device* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %66 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %65, i32 0, i32 1
  %67 = load i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)** %66, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = load %struct.ethtool_stats*, %struct.ethtool_stats** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 %67(%struct.net_device* %68, %struct.ethtool_stats* %69, i32* %70)
  br label %72

72:                                               ; preds = %58, %53, %48
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %79 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %81, align 8
  %83 = icmp ne i32 (%struct.dsa_switch*, i32, i32*)* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %86 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %88, align 8
  %90 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 %89(%struct.dsa_switch* %90, i32 %91, i32* %95)
  br label %97

97:                                               ; preds = %84, %77
  ret void
}

declare dso_local i32 @phy_ethtool_get_sset_count(i64) #1

declare dso_local i32 @phy_ethtool_get_stats(i64, %struct.ethtool_stats*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
