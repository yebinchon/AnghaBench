; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___br_vlan_filter_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c___br_vlan_filter_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.switchdev_attr = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@SWITCHDEV_F_SKIP_EOPNOTSUPP = common dso_local global i32 0, align 4
@SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING = common dso_local global i32 0, align 4
@BROPT_VLAN_ENABLED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__br_vlan_filter_toggle(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.switchdev_attr, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 1
  %12 = load i32, i32* @SWITCHDEV_F_SKIP_EOPNOTSUPP, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 2
  %14 = load i32, i32* @SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 3
  %16 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %20 = load i32, i32* @BROPT_VLAN_ENABLED, align 4
  %21 = call i32 @br_opt_get(%struct.net_bridge* %19, i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

29:                                               ; preds = %2
  %30 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %31 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @switchdev_port_attr_set(i32 %32, %struct.switchdev_attr* %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %36, %29
  %44 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %45 = load i32, i32* @BROPT_VLAN_ENABLED, align 4
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @br_opt_toggle(%struct.net_bridge* %44, i32 %45, i32 %50)
  %52 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %53 = call i32 @br_manage_promisc(%struct.net_bridge* %52)
  %54 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %55 = call i32 @recalculate_group_addr(%struct.net_bridge* %54)
  %56 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %57 = call i32 @br_recalculate_fwd_mask(%struct.net_bridge* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %41, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @switchdev_port_attr_set(i32, %struct.switchdev_attr*) #1

declare dso_local i32 @br_opt_toggle(%struct.net_bridge*, i32, i32) #1

declare dso_local i32 @br_manage_promisc(%struct.net_bridge*) #1

declare dso_local i32 @recalculate_group_addr(%struct.net_bridge*) #1

declare dso_local i32 @br_recalculate_fwd_mask(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
