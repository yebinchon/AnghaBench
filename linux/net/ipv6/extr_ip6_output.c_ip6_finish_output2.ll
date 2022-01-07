; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_finish_output2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_finish_output2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.dst_entry = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.neighbour = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rt6_info = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IP6SKB_FORWARDED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@dev_loopback_xmit = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTMCAST = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_NODELOCAL = common dso_local global i64 0, align 8
@LWTUNNEL_XMIT_DONE = common dso_local global i32 0, align 4
@nd_tbl = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ip6_finish_output2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_finish_output2(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inet6_dev*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %16)
  store %struct.dst_entry* %17, %struct.dst_entry** %8, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %19 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i64 @ipv6_addr_is_multicast(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %119

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %27)
  %29 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %28)
  store %struct.inet6_dev* %29, %struct.inet6_dev** %13, align 8
  %30 = load %struct.net_device*, %struct.net_device** %9, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_LOOPBACK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %26
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call i64 @sk_mc_loop(%struct.sock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i64 @mroute6_is_socket(%struct.net* %41, %struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IP6SKB_FORWARDED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %45, %40
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = call i64 @ipv6_chk_mcast_addr(%struct.net_device* %54, i32* %57, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %53, %45
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %64, i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %14, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* @NFPROTO_IPV6, align 4
  %71 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %72 = load %struct.net*, %struct.net** %5, align 8
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @dev_loopback_xmit, align 4
  %79 = call i32 @NF_HOOK(i32 %70, i32 %71, %struct.net* %72, %struct.sock* %73, %struct.sk_buff* %74, i32* null, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %69, %63
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.net*, %struct.net** %5, align 8
  %88 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %89 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %90 = call i32 @IP6_INC_STATS(%struct.net* %87, %struct.inet6_dev* %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  store i32 0, i32* %4, align 4
  br label %186

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %53, %36, %26
  %95 = load %struct.net*, %struct.net** %5, align 8
  %96 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %97 = load i32, i32* @IPSTATS_MIB_OUTMCAST, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IP6_UPD_PO_STATS(%struct.net* %95, %struct.inet6_dev* %96, i32 %97, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %104)
  %106 = load i64, i64* @IPV6_ADDR_SCOPE_NODELOCAL, align 8
  %107 = icmp sle i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %94
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IFF_LOOPBACK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = call i32 @kfree_skb(%struct.sk_buff* %116)
  store i32 0, i32* %4, align 4
  br label %186

118:                                              ; preds = %108, %94
  br label %119

119:                                              ; preds = %118, %3
  %120 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %121 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @lwtunnel_xmit_redirect(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = call i32 @lwtunnel_xmit(%struct.sk_buff* %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @LWTUNNEL_XMIT_DONE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %4, align 4
  br label %186

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %119
  %138 = call i32 (...) @rcu_read_lock_bh()
  %139 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %140 = bitcast %struct.dst_entry* %139 to %struct.rt6_info*
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = call %struct.in6_addr* @rt6_nexthop(%struct.rt6_info* %140, i32* %143)
  store %struct.in6_addr* %144, %struct.in6_addr** %10, align 8
  %145 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %146 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %145, i32 0, i32 0
  %147 = load %struct.net_device*, %struct.net_device** %146, align 8
  %148 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %149 = call %struct.neighbour* @__ipv6_neigh_lookup_noref(%struct.net_device* %147, %struct.in6_addr* %148)
  store %struct.neighbour* %149, %struct.neighbour** %11, align 8
  %150 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %151 = icmp ne %struct.neighbour* %150, null
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %137
  %157 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %158 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %159 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %158, i32 0, i32 0
  %160 = load %struct.net_device*, %struct.net_device** %159, align 8
  %161 = call %struct.neighbour* @__neigh_create(i32* @nd_tbl, %struct.in6_addr* %157, %struct.net_device* %160, i32 0)
  store %struct.neighbour* %161, %struct.neighbour** %11, align 8
  br label %162

162:                                              ; preds = %156, %137
  %163 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %164 = call i32 @IS_ERR(%struct.neighbour* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %168 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %169 = call i32 @sock_confirm_neigh(%struct.sk_buff* %167, %struct.neighbour* %168)
  %170 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %172 = call i32 @neigh_output(%struct.neighbour* %170, %struct.sk_buff* %171, i32 0)
  store i32 %172, i32* %12, align 4
  %173 = call i32 (...) @rcu_read_unlock_bh()
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %4, align 4
  br label %186

175:                                              ; preds = %162
  %176 = call i32 (...) @rcu_read_unlock_bh()
  %177 = load %struct.net*, %struct.net** %5, align 8
  %178 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %179 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %178)
  %180 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %181 = call i32 @IP6_INC_STATS(%struct.net* %177, %struct.inet6_dev* %179, i32 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %183 = call i32 @kfree_skb(%struct.sk_buff* %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %175, %166, %134, %115, %86
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_addr_is_multicast(i32*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i64 @sk_mc_loop(%struct.sock*) #1

declare dso_local i64 @mroute6_is_socket(%struct.net*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_chk_mcast_addr(%struct.net_device*, i32*, i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(i32*) #1

declare dso_local i64 @lwtunnel_xmit_redirect(i32) #1

declare dso_local i32 @lwtunnel_xmit(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.in6_addr* @rt6_nexthop(%struct.rt6_info*, i32*) #1

declare dso_local %struct.neighbour* @__ipv6_neigh_lookup_noref(%struct.net_device*, %struct.in6_addr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.neighbour* @__neigh_create(i32*, %struct.in6_addr*, %struct.net_device*, i32) #1

declare dso_local i32 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @sock_confirm_neigh(%struct.sk_buff*, %struct.neighbour*) #1

declare dso_local i32 @neigh_output(%struct.neighbour*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
