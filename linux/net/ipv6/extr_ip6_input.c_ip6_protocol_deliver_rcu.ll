; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_input.c_ip6_protocol_deliver_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_input.c_ip6_protocol_deliver_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.inet6_protocol = type { i32, i32 }
%struct.inet6_dev = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@inet6_protos = common dso_local global i32* null, align 8
@INET6_PROTO_FINAL = common dso_local global i32 0, align 4
@INET6_PROTO_NOPOLICY = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@tcp_v6_rcv = common dso_local global i32 0, align 4
@udpv6_rcv = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDELIVERS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INUNKNOWNPROTOS = common dso_local global i32 0, align 4
@ICMPV6_PARAMPROB = common dso_local global i32 0, align 4
@ICMPV6_UNK_NEXTHDR = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_protocol_deliver_rcu(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet6_protocol*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %17

17:                                               ; preds = %155, %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @skb_dst(%struct.sk_buff* %18)
  %20 = call %struct.inet6_dev* @ip6_dst_idev(i32 %19)
  store %struct.inet6_dev* %20, %struct.inet6_dev** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @IP6CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @skb_transport_offset(%struct.sk_buff* %29)
  %31 = call i32 @pskb_pull(%struct.sk_buff* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %196

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32* @skb_network_header(%struct.sk_buff* %35)
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %34, %17
  br label %42

42:                                               ; preds = %153, %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @raw6_local_deliver(%struct.sk_buff* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** @inet6_protos, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.inet6_protocol* @rcu_dereference(i32 %50)
  store %struct.inet6_protocol* %51, %struct.inet6_protocol** %9, align 8
  %52 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %53 = icmp ne %struct.inet6_protocol* %52, null
  br i1 %53, label %54, label %166

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %59 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @INET6_PROTO_FINAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %196

65:                                               ; preds = %57
  br label %123

66:                                               ; preds = %54
  %67 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %68 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @INET6_PROTO_FINAL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @inet6_sdif(%struct.sk_buff* %74)
  store i32 %75, i32* %15, align 4
  store i32 1, i32* %8, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @nf_reset_ct(%struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32* @skb_network_header(%struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call i32 @skb_network_header_len(%struct.sk_buff* %81)
  %83 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %78, i32* %80, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %84)
  store %struct.ipv6hdr* %85, %struct.ipv6hdr** %14, align 8
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %73
  %89 = load %struct.net*, %struct.net** %5, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %89, i32 %90)
  store %struct.net_device* %91, %struct.net_device** %16, align 8
  %92 = load %struct.net_device*, %struct.net_device** %16, align 8
  %93 = icmp ne %struct.net_device* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %196

95:                                               ; preds = %88
  br label %100

96:                                               ; preds = %73
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load %struct.net_device*, %struct.net_device** %98, align 8
  store %struct.net_device* %99, %struct.net_device** %16, align 8
  br label %100

100:                                              ; preds = %96, %95
  %101 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %102 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %101, i32 0, i32 1
  %103 = call i64 @ipv6_addr_is_multicast(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.net_device*, %struct.net_device** %16, align 8
  %107 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %108 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %107, i32 0, i32 1
  %109 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %110 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %109, i32 0, i32 0
  %111 = call i32 @ipv6_chk_mcast_addr(%struct.net_device* %106, i32* %108, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = call i32 @skb_network_header_len(%struct.sk_buff* %116)
  %118 = call i32 @ipv6_is_mld(%struct.sk_buff* %114, i32 %115, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %196

121:                                              ; preds = %113, %105, %100
  br label %122

122:                                              ; preds = %121, %66
  br label %123

123:                                              ; preds = %122, %65
  %124 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %125 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @INET6_PROTO_NOPOLICY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @XFRM_POLICY_IN, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i64 @xfrm6_policy_check(i32* null, i32 %131, %struct.sk_buff* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %196

136:                                              ; preds = %130, %123
  %137 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %138 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @tcp_v6_rcv, align 4
  %141 = load i32, i32* @udpv6_rcv, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = call i32 @INDIRECT_CALL_2(i32 %139, i32 %140, i32 %141, %struct.sk_buff* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %148 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @INET6_PROTO_FINAL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %7, align 4
  br label %42

155:                                              ; preds = %146
  br label %17

156:                                              ; preds = %136
  %157 = load i32, i32* %13, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.net*, %struct.net** %5, align 8
  %161 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %162 = load i32, i32* @IPSTATS_MIB_INDELIVERS, align 4
  %163 = call i32 @__IP6_INC_STATS(%struct.net* %160, %struct.inet6_dev* %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %156
  br label %165

165:                                              ; preds = %164
  br label %195

166:                                              ; preds = %42
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %187, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @XFRM_POLICY_IN, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = call i64 @xfrm6_policy_check(i32* null, i32 %170, %struct.sk_buff* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load %struct.net*, %struct.net** %5, align 8
  %176 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %177 = load i32, i32* @IPSTATS_MIB_INUNKNOWNPROTOS, align 4
  %178 = call i32 @__IP6_INC_STATS(%struct.net* %175, %struct.inet6_dev* %176, i32 %177)
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = load i32, i32* @ICMPV6_PARAMPROB, align 4
  %181 = load i32, i32* @ICMPV6_UNK_NEXTHDR, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @icmpv6_send(%struct.sk_buff* %179, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %174, %169
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = call i32 @kfree_skb(%struct.sk_buff* %185)
  br label %194

187:                                              ; preds = %166
  %188 = load %struct.net*, %struct.net** %5, align 8
  %189 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %190 = load i32, i32* @IPSTATS_MIB_INDELIVERS, align 4
  %191 = call i32 @__IP6_INC_STATS(%struct.net* %188, %struct.inet6_dev* %189, i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %193 = call i32 @consume_skb(%struct.sk_buff* %192)
  br label %194

194:                                              ; preds = %187, %184
  br label %195

195:                                              ; preds = %194, %165
  br label %203

196:                                              ; preds = %135, %120, %94, %64, %33
  %197 = load %struct.net*, %struct.net** %5, align 8
  %198 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %199 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %200 = call i32 @__IP6_INC_STATS(%struct.net* %197, %struct.inet6_dev* %198, i32 %199)
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %202 = call i32 @kfree_skb(%struct.sk_buff* %201)
  br label %203

203:                                              ; preds = %196, %195
  ret void
}

declare dso_local %struct.inet6_dev* @ip6_dst_idev(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @raw6_local_deliver(%struct.sk_buff*, i32) #1

declare dso_local %struct.inet6_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @inet6_sdif(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local i32 @ipv6_chk_mcast_addr(%struct.net_device*, i32*, i32*) #1

declare dso_local i32 @ipv6_is_mld(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @xfrm6_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @INDIRECT_CALL_2(i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @__IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
