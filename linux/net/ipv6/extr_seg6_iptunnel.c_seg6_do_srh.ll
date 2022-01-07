; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_do_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_do_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i64, i32 }
%struct.dst_entry = type { i32 }
%struct.seg6_iptunnel_encap = type { i32, i32 }
%struct.TYPE_2__ = type { i8* }

@ETH_P_IPV6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_IPXIP6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NEXTHDR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @seg6_do_srh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_do_srh(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.seg6_iptunnel_encap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.seg6_iptunnel_encap* @seg6_encap_lwtunnel(i32 %12)
  store %struct.seg6_iptunnel_encap* %13, %struct.seg6_iptunnel_encap** %5, align 8
  %14 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %5, align 8
  %15 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %134 [
    i32 129, label %17
    i32 130, label %38
    i32 128, label %93
  ]

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* @ETH_P_IPV6, align 8
  %22 = call i8* @htons(i64 %21)
  %23 = icmp ne i8* %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %145

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %5, align 8
  %30 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @seg6_do_srh_inline(%struct.sk_buff* %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %145

37:                                               ; preds = %27
  br label %134

38:                                               ; preds = %1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = load i32, i32* @SKB_GSO_IPXIP6, align 4
  %41 = call i32 @iptunnel_handle_offloads(%struct.sk_buff* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %145

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* @ETH_P_IPV6, align 8
  %51 = call i8* @htons(i64 %50)
  %52 = icmp eq i8* %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %54, i32* %6, align 4
  br label %68

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* @ETH_P_IP, align 8
  %60 = call i8* @htons(i64 %59)
  %61 = icmp eq i8* %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @IPPROTO_IPIP, align 4
  store i32 %63, i32* %6, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %145

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %5, align 8
  %71 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @seg6_do_srh_encap(%struct.sk_buff* %69, i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %145

79:                                               ; preds = %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call i32 @skb_transport_offset(%struct.sk_buff* %81)
  %83 = call i32 @skb_set_inner_transport_header(%struct.sk_buff* %80, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @skb_set_inner_protocol(%struct.sk_buff* %84, i8* %87)
  %89 = load i64, i64* @ETH_P_IPV6, align 8
  %90 = call i8* @htons(i64 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %134

93:                                               ; preds = %1
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %145

100:                                              ; preds = %93
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call i32 @pskb_expand_head(%struct.sk_buff* %101, i32 %104, i32 0, i32 %105)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %145

111:                                              ; preds = %100
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = call i32 @skb_mac_header_rebuild(%struct.sk_buff* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @skb_push(%struct.sk_buff* %114, i32 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %120 = load %struct.seg6_iptunnel_encap*, %struct.seg6_iptunnel_encap** %5, align 8
  %121 = getelementptr inbounds %struct.seg6_iptunnel_encap, %struct.seg6_iptunnel_encap* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @NEXTHDR_NONE, align 4
  %124 = call i32 @seg6_do_srh_encap(%struct.sk_buff* %119, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %145

129:                                              ; preds = %111
  %130 = load i64, i64* @ETH_P_IPV6, align 8
  %131 = call i8* @htons(i64 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %1, %129, %79, %37
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %137, 4
  %139 = call i8* @htons(i64 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %141 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %140)
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = call i32 @skb_set_transport_header(%struct.sk_buff* %143, i32 4)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %134, %127, %108, %97, %77, %64, %44, %35, %24
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.seg6_iptunnel_encap* @seg6_encap_lwtunnel(i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @seg6_do_srh_inline(%struct.sk_buff*, i32) #1

declare dso_local i32 @iptunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @seg6_do_srh_encap(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_set_inner_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_inner_protocol(%struct.sk_buff*, i8*) #1

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_mac_header_rebuild(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
