; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_sja1105.c_sja1105_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.packet_type = type { i32 }
%struct.sja1105_meta = type { i32, i32, i32 }
%struct.vlan_ethhdr = type { i32*, i32, i32 }

@ETH_P_SJA1105 = common dso_local global i64 0, align 8
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@VLAN_PRIO_MASK = common dso_local global i64 0, align 8
@VLAN_PRIO_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Couldn't decode source port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)* @sja1105_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sja1105_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.sja1105_meta, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlan_ethhdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  %18 = bitcast %struct.sja1105_meta* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.vlan_ethhdr* @vlan_eth_hdr(%struct.sk_buff* %19)
  store %struct.vlan_ethhdr* %20, %struct.vlan_ethhdr** %11, align 8
  %21 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %22 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohs(i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @ETH_P_SJA1105, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @sja1105_is_link_local(%struct.sk_buff* %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @sja1105_is_meta_frame(%struct.sk_buff* %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %3
  %38 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %39 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ntohs(i32 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @VLAN_VID_MASK, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @dsa_8021q_rx_source_port(i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @dsa_8021q_rx_switch_id(i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @VLAN_PRIO_MASK, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @VLAN_PRIO_SHIFT, align 8
  %53 = ashr i64 %51, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %91

56:                                               ; preds = %3
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %61 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %66 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %71 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 0, i32* %73, align 4
  %74 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %75 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 0, i32* %77, align 4
  br label %90

78:                                               ; preds = %56
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @sja1105_meta_unpack(%struct.sk_buff* %82, %struct.sja1105_meta* %8)
  %84 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = getelementptr inbounds %struct.sja1105_meta, %struct.sja1105_meta* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  br label %89

88:                                               ; preds = %78
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %116

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %37
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dsa_master_find_slave(%struct.net_device* %92, i32 %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = call i32 @netdev_warn(%struct.net_device* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %116

105:                                              ; preds = %91
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call %struct.sk_buff* @dsa_8021q_remove_header(%struct.sk_buff* %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %5, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call %struct.sk_buff* @sja1105_rcv_meta_state_machine(%struct.sk_buff* %112, %struct.sja1105_meta* %8, i32 %113, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %4, align 8
  br label %116

116:                                              ; preds = %111, %102, %88
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.vlan_ethhdr* @vlan_eth_hdr(%struct.sk_buff*) #2

declare dso_local i64 @ntohs(i32) #2

declare dso_local i32 @sja1105_is_link_local(%struct.sk_buff*) #2

declare dso_local i32 @sja1105_is_meta_frame(%struct.sk_buff*) #2

declare dso_local i32 @dsa_8021q_rx_source_port(i64) #2

declare dso_local i32 @dsa_8021q_rx_switch_id(i64) #2

declare dso_local i32 @sja1105_meta_unpack(%struct.sk_buff*, %struct.sja1105_meta*) #2

declare dso_local i32 @dsa_master_find_slave(%struct.net_device*, i32, i32) #2

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #2

declare dso_local %struct.sk_buff* @dsa_8021q_remove_header(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @sja1105_rcv_meta_state_machine(%struct.sk_buff*, %struct.sja1105_meta*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
