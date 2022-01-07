; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_lookup_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_lookup_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rt6_info* }
%struct.rt6_info = type { %struct.dst_entry }
%struct.dst_entry = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ipv6hdr = type { i32, i32, %struct.in6_addr }
%struct.flowi6 = type { i32, i32, i32, i32, i32, %struct.in6_addr, i32 }
%struct.fib6_table = type { i32 }

@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@FLOWI_FLAG_KNOWN_NH = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_lookup_nexthop(%struct.sk_buff* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.rt6_info*, align 8
  %12 = alloca %struct.flowi6, align 4
  %13 = alloca %struct.fib6_table*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call %struct.net* @dev_net(%struct.TYPE_7__* %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %18)
  store %struct.ipv6hdr* %19, %struct.ipv6hdr** %8, align 8
  %20 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  store i32 %20, i32* %9, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 5
  %28 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %29 = icmp ne %struct.in6_addr* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %32 = bitcast %struct.in6_addr* %27 to i8*
  %33 = bitcast %struct.in6_addr* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 2
  %37 = bitcast %struct.in6_addr* %27 to i8*
  %38 = bitcast %struct.in6_addr* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %41 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %45 = call i32 @ip6_flowinfo(%struct.ipv6hdr* %44)
  %46 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %52 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %56 = icmp ne %struct.in6_addr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* @FLOWI_FLAG_KNOWN_NH, align 4
  %59 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %39
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.net*, %struct.net** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call %struct.dst_entry* @ip6_route_input_lookup(%struct.net* %64, %struct.TYPE_7__* %67, %struct.flowi6* %12, %struct.sk_buff* %68, i32 %69)
  store %struct.dst_entry* %70, %struct.dst_entry** %10, align 8
  br label %86

71:                                               ; preds = %60
  %72 = load %struct.net*, %struct.net** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.fib6_table* @fib6_get_table(%struct.net* %72, i32 %73)
  store %struct.fib6_table* %74, %struct.fib6_table** %13, align 8
  %75 = load %struct.fib6_table*, %struct.fib6_table** %13, align 8
  %76 = icmp ne %struct.fib6_table* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %107

78:                                               ; preds = %71
  %79 = load %struct.net*, %struct.net** %7, align 8
  %80 = load %struct.fib6_table*, %struct.fib6_table** %13, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.rt6_info* @ip6_pol_route(%struct.net* %79, %struct.fib6_table* %80, i32 0, %struct.flowi6* %12, %struct.sk_buff* %81, i32 %82)
  store %struct.rt6_info* %83, %struct.rt6_info** %11, align 8
  %84 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %85 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %84, i32 0, i32 0
  store %struct.dst_entry* %85, %struct.dst_entry** %10, align 8
  br label %86

86:                                               ; preds = %78, %63
  %87 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %88 = icmp ne %struct.dst_entry* %87, null
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %91 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IFF_LOOPBACK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %100 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %105 = call i32 @dst_release(%struct.dst_entry* %104)
  store %struct.dst_entry* null, %struct.dst_entry** %10, align 8
  br label %106

106:                                              ; preds = %103, %98, %89, %86
  br label %107

107:                                              ; preds = %106, %77
  %108 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %109 = icmp ne %struct.dst_entry* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = load %struct.net*, %struct.net** %7, align 8
  %112 = getelementptr inbounds %struct.net, %struct.net* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.rt6_info*, %struct.rt6_info** %113, align 8
  store %struct.rt6_info* %114, %struct.rt6_info** %11, align 8
  %115 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %116 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %115, i32 0, i32 0
  store %struct.dst_entry* %116, %struct.dst_entry** %10, align 8
  %117 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %118 = call i32 @dst_hold(%struct.dst_entry* %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @skb_dst_drop(%struct.sk_buff* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %124 = call i32 @skb_dst_set(%struct.sk_buff* %122, %struct.dst_entry* %123)
  %125 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %126 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  ret i32 %127
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_7__*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ip6_flowinfo(%struct.ipv6hdr*) #1

declare dso_local %struct.dst_entry* @ip6_route_input_lookup(%struct.net*, %struct.TYPE_7__*, %struct.flowi6*, %struct.sk_buff*, i32) #1

declare dso_local %struct.fib6_table* @fib6_get_table(%struct.net*, i32) #1

declare dso_local %struct.rt6_info* @ip6_pol_route(%struct.net*, %struct.fib6_table*, i32, %struct.flowi6*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
