; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dsa_port* }
%struct.dsa_port = type { i32, %struct.dsa_switch*, %struct.ethtool_ops* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32*)* }
%struct.ethtool_ops = type { i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)* }
%struct.ethtool_stats = type { i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @dsa_master_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_master_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
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
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
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
  %24 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %25 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.net_device*, i32)* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %3
  %29 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %30 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %29, i32 0, i32 1
  %31 = load i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %35 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load i32, i32* @ETH_SS_STATS, align 4
  %39 = call i32 %36(%struct.net_device* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %41 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %40, i32 0, i32 1
  %42 = load i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_stats*, i32*)** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.ethtool_stats*, %struct.ethtool_stats** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 %42(%struct.net_device* %43, %struct.ethtool_stats* %44, i32* %45)
  br label %47

47:                                               ; preds = %33, %28, %3
  %48 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %49 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %51, align 8
  %53 = icmp ne i32 (%struct.dsa_switch*, i32, i32*)* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %56 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dsa_switch*, i32, i32*)*, i32 (%struct.dsa_switch*, i32, i32*)** %58, align 8
  %60 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 %59(%struct.dsa_switch* %60, i32 %61, i32* %65)
  br label %67

67:                                               ; preds = %54, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
