; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_vlan_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_vlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.bridge_vlan_info = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@BRIDGE_VLAN_INFO_BRENTRY = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, i32, %struct.bridge_vlan_info*, i32*, %struct.netlink_ext_ack*)* @br_vlan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_vlan_info(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i32 %2, %struct.bridge_vlan_info* %3, i32* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.net_bridge*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bridge_vlan_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %7, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.bridge_vlan_info* %3, %struct.bridge_vlan_info** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %92 [
    i32 128, label %16
    i32 129, label %50
  ]

16:                                               ; preds = %6
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %18 = icmp ne %struct.net_bridge_port* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %21 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %22 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %25 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %28 = call i32 @nbp_vlan_add(%struct.net_bridge_port* %20, i32 %23, i32 %26, i32* %13, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %14, align 4
  br label %44

29:                                               ; preds = %16
  %30 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %31 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %32 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  %36 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %37 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %40 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %43 = call i32 @br_vlan_add(%struct.net_bridge* %35, i32 %38, i32 %41, i32* %13, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %29, %19
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %92

50:                                               ; preds = %6
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %52 = icmp ne %struct.net_bridge_port* %51, null
  br i1 %52, label %53, label %81

53:                                               ; preds = %50
  %54 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %55 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %56 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nbp_vlan_delete(%struct.net_bridge_port* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32*, i32** %11, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %64 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BRIDGE_VLAN_INFO_MASTER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %71 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %70, i32 0, i32 0
  %72 = load %struct.net_bridge*, %struct.net_bridge** %71, align 8
  %73 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %74 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @br_vlan_delete(%struct.net_bridge* %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = load i32*, i32** %11, align 8
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %69, %62
  br label %91

81:                                               ; preds = %50
  %82 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  %83 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %10, align 8
  %84 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @br_vlan_delete(%struct.net_bridge* %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** %11, align 8
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %81
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %6, %91, %49
  %93 = load i32, i32* %14, align 4
  ret i32 %93
}

declare dso_local i32 @nbp_vlan_add(%struct.net_bridge_port*, i32, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @br_vlan_add(%struct.net_bridge*, i32, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nbp_vlan_delete(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_vlan_delete(%struct.net_bridge*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
