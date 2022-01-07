; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ipv6hdr = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.flowi6 = type { i64, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.flow_keys = type { i32 }

@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_DST_NOREF = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_route_input(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_tunnel_info*, align 8
  %7 = alloca %struct.flowi6, align 8
  %8 = alloca %struct.flow_keys*, align 8
  %9 = alloca %struct.flow_keys, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %10)
  store %struct.ipv6hdr* %11, %struct.ipv6hdr** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = call %struct.net* @dev_net(%struct.TYPE_7__* %14)
  store %struct.net* %15, %struct.net** %4, align 8
  %16 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %17 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 0
  %20 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %21 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %19, align 8
  %23 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 2
  %25 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 8
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 4
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %32 = call i32 @ip6_flowinfo(%struct.ipv6hdr* %31)
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 5
  %34 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %35 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %33, align 8
  %37 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 6
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 7
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %41, align 8
  store %struct.flow_keys* null, %struct.flow_keys** %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %47)
  store %struct.ip_tunnel_info* %48, %struct.ip_tunnel_info** %6, align 8
  %49 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %50 = icmp ne %struct.ip_tunnel_info* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %1
  %52 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %53 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %6, align 8
  %60 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %51, %1
  %66 = load %struct.net*, %struct.net** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %68 = call i64 @fib6_rules_early_flow_dissect(%struct.net* %66, %struct.sk_buff* %67, %struct.flowi6* %7, %struct.flow_keys* %9)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store %struct.flow_keys* %9, %struct.flow_keys** %8, align 8
  br label %71

71:                                               ; preds = %70, %65
  %72 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.net*, %struct.net** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %82 = load %struct.flow_keys*, %struct.flow_keys** %8, align 8
  %83 = call i32 @rt6_multipath_hash(%struct.net* %80, %struct.flowi6* %7, %struct.sk_buff* %81, %struct.flow_keys* %82)
  %84 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %87 = call i32 @skb_dst_drop(%struct.sk_buff* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %89 = load %struct.net*, %struct.net** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @ip6_route_input_lookup(%struct.net* %89, %struct.TYPE_7__* %92, %struct.flowi6* %7, %struct.sk_buff* %93, i32 %94)
  %96 = call i32 @skb_dst_set_noref(%struct.sk_buff* %88, i32 %95)
  ret void
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ip6_flowinfo(%struct.ipv6hdr*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @fib6_rules_early_flow_dissect(%struct.net*, %struct.sk_buff*, %struct.flowi6*, %struct.flow_keys*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt6_multipath_hash(%struct.net*, %struct.flowi6*, %struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip6_route_input_lookup(%struct.net*, %struct.TYPE_7__*, %struct.flowi6*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
