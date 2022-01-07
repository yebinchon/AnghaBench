; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_process_vlan_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_process_vlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.bridge_vlan_info = type { i64, i32 }
%struct.netlink_ext_ack = type { i32 }

@VLAN_VID_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_RANGE_BEGIN = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_RANGE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, i32, %struct.bridge_vlan_info*, %struct.bridge_vlan_info**, i32*, %struct.netlink_ext_ack*)* @br_process_vlan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_process_vlan_info(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i32 %2, %struct.bridge_vlan_info* %3, %struct.bridge_vlan_info** %4, i32* %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_bridge*, align 8
  %10 = alloca %struct.net_bridge_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bridge_vlan_info*, align 8
  %13 = alloca %struct.bridge_vlan_info**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.bridge_vlan_info, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %9, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.bridge_vlan_info* %3, %struct.bridge_vlan_info** %12, align 8
  store %struct.bridge_vlan_info** %4, %struct.bridge_vlan_info*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %19 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %20 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %25 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VLAN_VID_MASK, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %7
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %130

32:                                               ; preds = %23
  %33 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %34 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_BEGIN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  %41 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %40, align 8
  %42 = icmp ne %struct.bridge_vlan_info* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %130

46:                                               ; preds = %39
  %47 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %48 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  store %struct.bridge_vlan_info* %47, %struct.bridge_vlan_info** %48, align 8
  %49 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  %50 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %49, align 8
  %51 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %130

59:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %130

60:                                               ; preds = %32
  %61 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  %62 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %61, align 8
  %63 = icmp ne %struct.bridge_vlan_info* %62, null
  br i1 %63, label %64, label %122

64:                                               ; preds = %60
  %65 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %66 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BRIDGE_VLAN_INFO_RANGE_END, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %130

74:                                               ; preds = %64
  %75 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %76 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  %79 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %78, align 8
  %80 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %77, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %130

86:                                               ; preds = %74
  %87 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  %88 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %87, align 8
  %89 = call i32 @memcpy(%struct.bridge_vlan_info* %16, %struct.bridge_vlan_info* %88, i32 16)
  %90 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  %91 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %90, align 8
  %92 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %116, %86
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %99 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 %97, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %16, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %107 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %111 = call i32 @br_vlan_info(%struct.net_bridge* %106, %struct.net_bridge_port* %107, i32 %108, %struct.bridge_vlan_info* %16, i32* %109, %struct.netlink_ext_ack* %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %119

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %95

119:                                              ; preds = %114, %95
  %120 = load %struct.bridge_vlan_info**, %struct.bridge_vlan_info*** %13, align 8
  store %struct.bridge_vlan_info* null, %struct.bridge_vlan_info** %120, align 8
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %8, align 4
  br label %130

122:                                              ; preds = %60
  %123 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %124 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.bridge_vlan_info*, %struct.bridge_vlan_info** %12, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %129 = call i32 @br_vlan_info(%struct.net_bridge* %123, %struct.net_bridge_port* %124, i32 %125, %struct.bridge_vlan_info* %126, i32* %127, %struct.netlink_ext_ack* %128)
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %122, %119, %83, %71, %59, %56, %43, %29
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @memcpy(%struct.bridge_vlan_info*, %struct.bridge_vlan_info*, i32) #1

declare dso_local i32 @br_vlan_info(%struct.net_bridge*, %struct.net_bridge_port*, i32, %struct.bridge_vlan_info*, i32*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
