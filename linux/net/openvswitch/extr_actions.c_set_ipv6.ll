; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ovs_key_ipv6 = type { i32, i32, i64, i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32 }

@IP6_FH_F_SKIP_RH = common dso_local global i32 0, align 4
@NEXTHDR_ROUTING = common dso_local global i64 0, align 8
@IPV6_FLOWINFO_FLOWLABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6*)* @set_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ipv6(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_key_ipv6* %2, %struct.ovs_key_ipv6* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_key_ipv6*, align 8
  %9 = alloca %struct.ovs_key_ipv6*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [4 x i32], align 16
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_key_ipv6* %2, %struct.ovs_key_ipv6** %8, align 8
  store %struct.ovs_key_ipv6* %3, %struct.ovs_key_ipv6** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i64 @skb_network_offset(%struct.sk_buff* %20)
  %22 = add i64 %21, 16
  %23 = call i32 @skb_ensure_writable(%struct.sk_buff* %19, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %192

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %30)
  store %struct.ipv6hdr* %31, %struct.ipv6hdr** %10, align 8
  %32 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %33 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_ipv6_mask_nonzero(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %29
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i32 0, i32 3
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %8, align 8
  %42 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %45 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %48 = call i32 @mask_ipv6_addr(i32* %40, i32 %43, i32 %46, i32* %47)
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %51 = call i32 @memcmp(i32* %49, i32* %50, i32 16)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %37
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %57 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %62 = call i32 @set_ipv6_addr(%struct.sk_buff* %55, i32 %59, i32* %60, i32* %61, i32 1)
  %63 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %64 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %68 = call i32 @memcpy(i32* %66, i32* %67, i32 4)
  br label %69

69:                                               ; preds = %54, %37
  br label %70

70:                                               ; preds = %69, %29
  %71 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %72 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @is_ipv6_mask_nonzero(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  %77 = load i32, i32* @IP6_FH_F_SKIP_RH, align 4
  store i32 %77, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %78 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %79 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %78, i32 0, i32 2
  store i32* %79, i32** %17, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %8, align 8
  %82 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %85 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %88 = call i32 @mask_ipv6_addr(i32* %80, i32 %83, i32 %86, i32* %87)
  %89 = load i32*, i32** %17, align 8
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %91 = call i32 @memcmp(i32* %89, i32* %90, i32 16)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %76
  %95 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %96 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ipv6_ext_hdr(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i64, i64* @NEXTHDR_ROUTING, align 8
  %103 = call i64 @ipv6_find_hdr(%struct.sk_buff* %101, i32* %14, i64 %102, i32* null, i32* %15)
  %104 = load i64, i64* @NEXTHDR_ROUTING, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %110 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @set_ipv6_addr(%struct.sk_buff* %108, i32 %112, i32* %113, i32* %114, i32 %115)
  %117 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %118 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %122 = call i32 @memcpy(i32* %120, i32* %121, i32 4)
  br label %123

123:                                              ; preds = %107, %76
  br label %124

124:                                              ; preds = %123, %70
  %125 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %126 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %131 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %132 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = xor i32 %133, -1
  %135 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %8, align 8
  %136 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ipv6_change_dsfield(%struct.ipv6hdr* %130, i32 %134, i32 %137)
  %139 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %140 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %139)
  %141 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %142 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %129, %124
  %145 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %146 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %151 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %8, align 8
  %152 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @ntohl(i64 %153)
  %155 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %156 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @ntohl(i64 %157)
  %159 = call i32 @set_ipv6_fl(%struct.ipv6hdr* %150, i32 %154, i32 %158)
  %160 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %161 = bitcast %struct.ipv6hdr* %160 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IPV6_FLOWINFO_FLOWLABEL, align 4
  %164 = call i32 @htonl(i32 %163)
  %165 = and i32 %162, %164
  %166 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %167 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 4
  br label %169

169:                                              ; preds = %149, %144
  %170 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %171 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %176 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %8, align 8
  %179 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %9, align 8
  %182 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @OVS_SET_MASKED(i32 %177, i32 %180, i32 %183)
  %185 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %186 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %189 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 4
  br label %191

191:                                              ; preds = %174, %169
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %191, %27
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @is_ipv6_mask_nonzero(i32) #1

declare dso_local i32 @mask_ipv6_addr(i32*, i32, i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @set_ipv6_addr(%struct.sk_buff*, i32, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ipv6_ext_hdr(i32) #1

declare dso_local i64 @ipv6_find_hdr(%struct.sk_buff*, i32*, i64, i32*, i32*) #1

declare dso_local i32 @ipv6_change_dsfield(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @set_ipv6_fl(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @OVS_SET_MASKED(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
