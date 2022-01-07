; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.mld_msg = type { i32, i32, %struct.in6_addr }
%struct.flowi6 = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IPV6_TLV_ROUTERALERT = common dso_local global i32 0, align 4
@IPV6_TLV_PADN = common dso_local global i32 0, align 4
@ICMPV6_MGM_REDUCTION = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global %struct.in6_addr zeroinitializer, align 4
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global %struct.in6_addr zeroinitializer, align 4
@NEXTHDR_HOP = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_addr*, %struct.net_device*, i32)* @igmp6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_send(%struct.in6_addr* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.mld_msg*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca %struct.in6_addr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [8 x i32], align 16
  %22 = alloca %struct.flowi6, align 4
  %23 = alloca %struct.dst_entry*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.net* @dev_net(%struct.net_device* %24)
  store %struct.net* %25, %struct.net** %7, align 8
  %26 = load %struct.net*, %struct.net** %7, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.sock*, %struct.sock** %28, align 8
  store %struct.sock* %29, %struct.sock** %8, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %36 = load i32, i32* @IPPROTO_ICMPV6, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* @IPV6_TLV_ROUTERALERT, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 2, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* @IPV6_TLV_PADN, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ICMPV6_MGM_REDUCTION, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store %struct.in6_addr* @in6addr_linklocal_allrouters, %struct.in6_addr** %12, align 8
  br label %52

50:                                               ; preds = %3
  %51 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %51, %struct.in6_addr** %12, align 8
  br label %52

52:                                               ; preds = %50, %49
  store i32 8, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 32
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 4, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %20, align 4
  %61 = call i32 (...) @rcu_read_lock()
  %62 = load %struct.net*, %struct.net** %7, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %63)
  %65 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @IP6_UPD_PO_STATS(%struct.net* %62, %struct.inet6_dev* %64, i32 %65, i32 %66)
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.sock*, %struct.sock** %8, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %72, %73
  %75 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %69, i32 %74, i32 1, i32* %17)
  store %struct.sk_buff* %75, %struct.sk_buff** %10, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %52
  %79 = call i32 (...) @rcu_read_lock()
  %80 = load %struct.net*, %struct.net** %7, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %81)
  %83 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %84 = call i32 @IP6_INC_STATS(%struct.net* %80, %struct.inet6_dev* %82, i32 %83)
  %85 = call i32 (...) @rcu_read_unlock()
  br label %196

86:                                               ; preds = %52
  %87 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @skb_reserve(%struct.sk_buff* %90, i32 %91)
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %95 = call i64 @ipv6_get_lladdr(%struct.net_device* %93, %struct.in6_addr* %14, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store %struct.in6_addr* @in6addr_any, %struct.in6_addr** %13, align 8
  br label %99

98:                                               ; preds = %86
  store %struct.in6_addr* %14, %struct.in6_addr** %13, align 8
  br label %99

99:                                               ; preds = %98, %97
  %100 = load %struct.sock*, %struct.sock** %8, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %104 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %105 = load i32, i32* @NEXTHDR_HOP, align 4
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @ip6_mc_hdr(%struct.sock* %100, %struct.sk_buff* %101, %struct.net_device* %102, %struct.in6_addr* %103, %struct.in6_addr* %104, i32 %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %110 = call i32 @skb_put_data(%struct.sk_buff* %108, i32* %109, i32 32)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = call %struct.mld_msg* @skb_put_zero(%struct.sk_buff* %111, i32 12)
  store %struct.mld_msg* %112, %struct.mld_msg** %11, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %115 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %117 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %116, i32 0, i32 2
  %118 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %119 = bitcast %struct.in6_addr* %117 to i8*
  %120 = bitcast %struct.in6_addr* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  %121 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %122 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %125 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @csum_partial(%struct.mld_msg* %125, i32 %126, i32 0)
  %128 = call i32 @csum_ipv6_magic(%struct.in6_addr* %121, %struct.in6_addr* %122, i32 %123, i32 %124, i32 %127)
  %129 = load %struct.mld_msg*, %struct.mld_msg** %11, align 8
  %130 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = call i32 (...) @rcu_read_lock()
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %134)
  store %struct.inet6_dev* %135, %struct.inet6_dev** %9, align 8
  %136 = load %struct.sock*, %struct.sock** %8, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %142 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load %struct.net_device*, %struct.net_device** %145, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @icmpv6_flow_init(%struct.sock* %136, %struct.flowi6* %22, i32 %137, i32* %140, i32* %143, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load %struct.net_device*, %struct.net_device** %151, align 8
  %153 = call %struct.dst_entry* @icmp6_dst_alloc(%struct.net_device* %152, %struct.flowi6* %22)
  store %struct.dst_entry* %153, %struct.dst_entry** %23, align 8
  %154 = load %struct.dst_entry*, %struct.dst_entry** %23, align 8
  %155 = call i64 @IS_ERR(%struct.dst_entry* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %99
  %158 = load %struct.dst_entry*, %struct.dst_entry** %23, align 8
  %159 = call i32 @PTR_ERR(%struct.dst_entry* %158)
  store i32 %159, i32* %17, align 4
  br label %193

160:                                              ; preds = %99
  %161 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %162 = load %struct.dst_entry*, %struct.dst_entry** %23, align 8
  %163 = call i32 @skb_dst_set(%struct.sk_buff* %161, %struct.dst_entry* %162)
  %164 = load i32, i32* @NFPROTO_IPV6, align 4
  %165 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %166 = load %struct.net*, %struct.net** %7, align 8
  %167 = load %struct.sock*, %struct.sock** %8, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load %struct.net_device*, %struct.net_device** %170, align 8
  %172 = load i32, i32* @dst_output, align 4
  %173 = call i32 @NF_HOOK(i32 %164, i32 %165, %struct.net* %166, %struct.sock* %167, %struct.sk_buff* %168, i32* null, %struct.net_device* %171, i32 %172)
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %193, %160
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %174
  %178 = load %struct.net*, %struct.net** %7, align 8
  %179 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @ICMP6MSGOUT_INC_STATS(%struct.net* %178, %struct.inet6_dev* %179, i32 %180)
  %182 = load %struct.net*, %struct.net** %7, align 8
  %183 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %184 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %185 = call i32 @ICMP6_INC_STATS(%struct.net* %182, %struct.inet6_dev* %183, i32 %184)
  br label %191

186:                                              ; preds = %174
  %187 = load %struct.net*, %struct.net** %7, align 8
  %188 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %189 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %190 = call i32 @IP6_INC_STATS(%struct.net* %187, %struct.inet6_dev* %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %177
  %192 = call i32 (...) @rcu_read_unlock()
  br label %196

193:                                              ; preds = %157
  %194 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %195 = call i32 @kfree_skb(%struct.sk_buff* %194)
  br label %174

196:                                              ; preds = %191, %78
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ip6_mc_hdr(%struct.sock*, %struct.sk_buff*, %struct.net_device*, %struct.in6_addr*, %struct.in6_addr*, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local %struct.mld_msg* @skb_put_zero(%struct.sk_buff*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @csum_ipv6_magic(%struct.in6_addr*, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @csum_partial(%struct.mld_msg*, i32, i32) #1

declare dso_local i32 @icmpv6_flow_init(%struct.sock*, %struct.flowi6*, i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.net_device*, %struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
