; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_forward.c_ip_forward.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_forward.c_ip_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i32 }
%struct.iphdr = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ip_options = type { i32, i64, i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.ip_options }

@PACKET_HOST = common dso_local global i64 0, align 8
@XFRM_POLICY_FWD = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@IPSKB_FORWARDED = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IPSKB_DOREDIRECT = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@ip_forward_finish = common dso_local global i32 0, align 4
@ICMP_SR_FAILED = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ICMP_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMP_EXC_TTL = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_forward(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.ip_options*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.TYPE_6__* @IPCB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.ip_options* %11, %struct.ip_options** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PACKET_HOST, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %183

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %183

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i64 @skb_warn_if_lro(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %183

30:                                               ; preds = %25
  %31 = load i32, i32* @XFRM_POLICY_FWD, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @xfrm4_policy_check(i32* null, i32 %31, %struct.sk_buff* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %183

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_6__* @IPCB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i64 @ip_call_ra_chain(%struct.sk_buff* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %48, i32* %2, align 4
  br label %187

49:                                               ; preds = %43, %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @skb_forward_csum(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.net* @dev_net(i32 %54)
  store %struct.net* %55, %struct.net** %8, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %175

62:                                               ; preds = %49
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call i32 @xfrm4_route_forward(%struct.sk_buff* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %183

67:                                               ; preds = %62
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %68)
  store %struct.rtable* %69, %struct.rtable** %6, align 8
  %70 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %71 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.rtable*, %struct.rtable** %6, align 8
  %76 = getelementptr inbounds %struct.rtable, %struct.rtable* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %170

80:                                               ; preds = %74, %67
  %81 = load i32, i32* @IPSKB_FORWARDED, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call %struct.TYPE_6__* @IPCB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 8
  %87 = load %struct.rtable*, %struct.rtable** %6, align 8
  %88 = getelementptr inbounds %struct.rtable, %struct.rtable* %87, i32 0, i32 0
  %89 = call i32 @ip_dst_mtu_maybe_forward(%struct.TYPE_5__* %88, i32 1)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @ip_exceeds_mtu(%struct.sk_buff* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %80
  %95 = load %struct.net*, %struct.net** %8, align 8
  %96 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %97 = call i32 @IP_INC_STATS(%struct.net* %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %99 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %100 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @htonl(i32 %101)
  %103 = call i32 @icmp_send(%struct.sk_buff* %98, i32 %99, i32 %100, i32 %102)
  br label %183

104:                                              ; preds = %80
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = load %struct.rtable*, %struct.rtable** %6, align 8
  %107 = getelementptr inbounds %struct.rtable, %struct.rtable* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @LL_RESERVED_SPACE(i32 %109)
  %111 = load %struct.rtable*, %struct.rtable** %6, align 8
  %112 = getelementptr inbounds %struct.rtable, %struct.rtable* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %110, %114
  %116 = call i64 @skb_cow(%struct.sk_buff* %105, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %183

119:                                              ; preds = %104
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %120)
  store %struct.iphdr* %121, %struct.iphdr** %5, align 8
  %122 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %123 = call i32 @ip_decrease_ttl(%struct.iphdr* %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %125 = call %struct.TYPE_6__* @IPCB(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IPSKB_DOREDIRECT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %119
  %132 = load %struct.ip_options*, %struct.ip_options** %7, align 8
  %133 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = call i32 @skb_sec_path(%struct.sk_buff* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %142 = call i32 @ip_rt_send_redirect(%struct.sk_buff* %141)
  br label %143

143:                                              ; preds = %140, %136, %131, %119
  %144 = load %struct.net*, %struct.net** %8, align 8
  %145 = getelementptr inbounds %struct.net, %struct.net* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @rt_tos2priority(i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %143
  %157 = load i32, i32* @NFPROTO_IPV4, align 4
  %158 = load i32, i32* @NF_INET_FORWARD, align 4
  %159 = load %struct.net*, %struct.net** %8, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.rtable*, %struct.rtable** %6, align 8
  %165 = getelementptr inbounds %struct.rtable, %struct.rtable* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ip_forward_finish, align 4
  %169 = call i32 @NF_HOOK(i32 %157, i32 %158, %struct.net* %159, i32* null, %struct.sk_buff* %160, i32 %163, i32 %167, i32 %168)
  store i32 %169, i32* %2, align 4
  br label %187

170:                                              ; preds = %79
  %171 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %172 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %173 = load i32, i32* @ICMP_SR_FAILED, align 4
  %174 = call i32 @icmp_send(%struct.sk_buff* %171, i32 %172, i32 %173, i32 0)
  br label %183

175:                                              ; preds = %61
  %176 = load %struct.net*, %struct.net** %8, align 8
  %177 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %178 = call i32 @__IP_INC_STATS(%struct.net* %176, i32 %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %180 = load i32, i32* @ICMP_TIME_EXCEEDED, align 4
  %181 = load i32, i32* @ICMP_EXC_TTL, align 4
  %182 = call i32 @icmp_send(%struct.sk_buff* %179, i32 %180, i32 %181, i32 0)
  br label %183

183:                                              ; preds = %175, %170, %118, %94, %66, %35, %29, %24, %17
  %184 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %185 = call i32 @kfree_skb(%struct.sk_buff* %184)
  %186 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %156, %47
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_6__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local i32 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i64 @ip_call_ra_chain(%struct.sk_buff*) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @xfrm4_route_forward(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @ip_dst_mtu_maybe_forward(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ip_exceeds_mtu(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i64) #1

declare dso_local i64 @LL_RESERVED_SPACE(i32) #1

declare dso_local i32 @ip_decrease_ttl(%struct.iphdr*) #1

declare dso_local i32 @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i32 @ip_rt_send_redirect(%struct.sk_buff*) #1

declare dso_local i32 @rt_tos2priority(i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
