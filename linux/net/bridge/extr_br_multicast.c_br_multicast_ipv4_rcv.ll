; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_ipv4_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_ipv4_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.igmphdr = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }

@ENOMSG = common dso_local global i32 0, align 4
@IPPROTO_PIM = common dso_local global i64 0, align 8
@BR_MCAST_DIR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32)* @br_multicast_ipv4_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_multicast_ipv4_rcv(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.igmphdr*, align 8
  %12 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call i32 @ip_mc_check_igmp(%struct.sk_buff* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @ENOMSG, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ipv4_is_local_multicast(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = call %struct.TYPE_6__* @BR_INPUT_SKB_CB(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %64

30:                                               ; preds = %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @pim_ipv4_all_pim_routers(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPPROTO_PIM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %46 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @br_multicast_pim(%struct.net_bridge* %45, %struct.net_bridge_port* %46, %struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %63

50:                                               ; preds = %30
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ipv4_is_all_snoopers(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @br_ip4_multicast_mrd_rcv(%struct.net_bridge* %58, %struct.net_bridge_port* %59, %struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %26
  store i32 0, i32* %5, align 4
  br label %137

65:                                               ; preds = %4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %70 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @br_multicast_err_count(%struct.net_bridge* %69, %struct.net_bridge_port* %70, i32 %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %137

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = call %struct.igmphdr* @igmp_hdr(%struct.sk_buff* %78)
  store %struct.igmphdr* %79, %struct.igmphdr** %11, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call %struct.TYPE_5__* @eth_hdr(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %10, align 8
  %84 = load %struct.igmphdr*, %struct.igmphdr** %11, align 8
  %85 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = call %struct.TYPE_6__* @BR_INPUT_SKB_CB(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.igmphdr*, %struct.igmphdr** %11, align 8
  %91 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %126 [
    i32 128, label %93
    i32 132, label %93
    i32 131, label %105
    i32 129, label %111
    i32 130, label %117
  ]

93:                                               ; preds = %77, %77
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call %struct.TYPE_6__* @BR_INPUT_SKB_CB(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %98 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %99 = load %struct.igmphdr*, %struct.igmphdr** %11, align 8
  %100 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @br_ip4_multicast_add_group(%struct.net_bridge* %97, %struct.net_bridge_port* %98, i32 %101, i32 %102, i8* %103)
  store i32 %104, i32* %12, align 4
  br label %126

105:                                              ; preds = %77
  %106 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %107 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @br_ip4_multicast_igmp3_report(%struct.net_bridge* %106, %struct.net_bridge_port* %107, %struct.sk_buff* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  br label %126

111:                                              ; preds = %77
  %112 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %113 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @br_ip4_multicast_query(%struct.net_bridge* %112, %struct.net_bridge_port* %113, %struct.sk_buff* %114, i32 %115)
  br label %126

117:                                              ; preds = %77
  %118 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %119 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %120 = load %struct.igmphdr*, %struct.igmphdr** %11, align 8
  %121 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @br_ip4_multicast_leave_group(%struct.net_bridge* %118, %struct.net_bridge_port* %119, i32 %122, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %77, %117, %111, %105, %93
  %127 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %128 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = call %struct.TYPE_6__* @BR_INPUT_SKB_CB(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @BR_MCAST_DIR_RX, align 4
  %135 = call i32 @br_multicast_count(%struct.net_bridge* %127, %struct.net_bridge_port* %128, %struct.sk_buff* %129, i32 %133, i32 %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %126, %68, %64
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @ip_mc_check_igmp(%struct.sk_buff*) #1

declare dso_local i32 @ipv4_is_local_multicast(i32) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @pim_ipv4_all_pim_routers(i32) #1

declare dso_local i32 @br_multicast_pim(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i64 @ipv4_is_all_snoopers(i32) #1

declare dso_local i32 @br_ip4_multicast_mrd_rcv(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @br_multicast_err_count(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local %struct.igmphdr* @igmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @br_ip4_multicast_add_group(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i8*) #1

declare dso_local i32 @br_ip4_multicast_igmp3_report(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32) #1

declare dso_local i32 @br_ip4_multicast_query(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32) #1

declare dso_local i32 @br_ip4_multicast_leave_group(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i8*) #1

declare dso_local i32 @br_multicast_count(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
