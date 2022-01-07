; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_parse_ipv6hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_parse_ipv6hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32 }

@NEXTHDR_NONE = common dso_local global i32 0, align 4
@IPV6_FLOWINFO_FLOWLABEL = common dso_local global i32 0, align 4
@IP6_FH_F_FRAG = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_LATER = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_FIRST = common dso_local global i32 0, align 4
@OVS_FRAG_TYPE_NONE = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*)* @parse_ipv6hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipv6hdr(%struct.sk_buff* %0, %struct.sw_flow_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_network_offset(%struct.sk_buff* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %18, 12
  %20 = trunc i64 %19 to i32
  %21 = call i32 @check_header(%struct.sk_buff* %16, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %28)
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %10, align 8
  %30 = load i32, i32* @NEXTHDR_NONE, align 4
  %31 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %32 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %35 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %34)
  %36 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %37 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %40 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %43 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %46 = bitcast %struct.ipv6hdr* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IPV6_FLOWINFO_FLOWLABEL, align 4
  %49 = call i32 @htonl(i32 %48)
  %50 = and i32 %47, %49
  %51 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %52 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %55 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %58 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %62 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %65 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @ipv6_find_hdr(%struct.sk_buff* %68, i32* %7, i32 -1, i16* %6, i32* %13)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @IP6_FH_F_FRAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %27
  %75 = load i16, i16* %6, align 2
  %76 = icmp ne i16 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @OVS_FRAG_TYPE_LATER, align 4
  %79 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %80 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %84 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %119

86:                                               ; preds = %74
  %87 = load i32, i32* @OVS_FRAG_TYPE_FIRST, align 4
  %88 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %89 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  br label %96

91:                                               ; preds = %27
  %92 = load i32, i32* @OVS_FRAG_TYPE_NONE, align 4
  %93 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %94 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EPROTO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %119

105:                                              ; preds = %96
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub i32 %106, %107
  store i32 %108, i32* %9, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %110, %111
  %113 = call i32 @skb_set_transport_header(%struct.sk_buff* %109, i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %116 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %105, %102, %77, %25
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @check_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i16*, i32*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
