; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_lwt.c_ila_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_lwt.c_ila_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.dst_entry = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* }
%struct.rt6_info = type { i32 }
%struct.ila_lwt = type { i32, i64, i64 }
%struct.ipv6hdr = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_CACHE = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ila_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.rt6_info*, align 8
  %10 = alloca %struct.ila_lwt*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.flowi6, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %8, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %18 = bitcast %struct.dst_entry* %17 to %struct.rt6_info*
  store %struct.rt6_info* %18, %struct.rt6_info** %9, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %20 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call %struct.ila_lwt* @ila_lwt_lwtunnel(%struct.TYPE_5__* %21)
  store %struct.ila_lwt* %22, %struct.ila_lwt** %10, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ETH_P_IPV6, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %134

32:                                               ; preds = %3
  %33 = load %struct.ila_lwt*, %struct.ila_lwt** %10, align 8
  %34 = getelementptr inbounds %struct.ila_lwt, %struct.ila_lwt* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %40 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @ila_params_lwtunnel(%struct.TYPE_5__* %41)
  %43 = call i32 @ila_update_ipv6_locator(%struct.sk_buff* %38, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %46 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RTF_GATEWAY, align 4
  %49 = load i32, i32* @RTF_CACHE, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %57, align 8
  %59 = load %struct.net*, %struct.net** %5, align 8
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call i32 %58(%struct.net* %59, %struct.sock* %60, %struct.sk_buff* %61)
  store i32 %62, i32* %4, align 4
  br label %138

63:                                               ; preds = %44
  %64 = load %struct.ila_lwt*, %struct.ila_lwt** %10, align 8
  %65 = getelementptr inbounds %struct.ila_lwt, %struct.ila_lwt* %64, i32 0, i32 0
  %66 = call %struct.dst_entry* @dst_cache_get(i32* %65)
  store %struct.dst_entry* %66, %struct.dst_entry** %11, align 8
  %67 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %68 = icmp ne %struct.dst_entry* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %74)
  store %struct.ipv6hdr* %75, %struct.ipv6hdr** %13, align 8
  %76 = call i32 @memset(%struct.flowi6* %14, i32 0, i32 16)
  %77 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %78 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %84 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %86 = bitcast %struct.dst_entry* %85 to %struct.rt6_info*
  %87 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %88 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %87, i32 0, i32 0
  %89 = call i32* @rt6_nexthop(%struct.rt6_info* %86, i32* %88)
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load %struct.net*, %struct.net** %5, align 8
  %93 = call %struct.dst_entry* @ip6_route_output(%struct.net* %92, i32* null, %struct.flowi6* %14)
  store %struct.dst_entry* %93, %struct.dst_entry** %11, align 8
  %94 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %95 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %73
  %99 = load i32, i32* @EHOSTUNREACH, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  %101 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %102 = call i32 @dst_release(%struct.dst_entry* %101)
  br label %134

103:                                              ; preds = %73
  %104 = load %struct.net*, %struct.net** %5, align 8
  %105 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %106 = call i32 @flowi6_to_flowi(%struct.flowi6* %14)
  %107 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %104, %struct.dst_entry* %105, i32 %106, i32* null, i32 0)
  store %struct.dst_entry* %107, %struct.dst_entry** %11, align 8
  %108 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %109 = call i64 @IS_ERR(%struct.dst_entry* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %113 = call i32 @PTR_ERR(%struct.dst_entry* %112)
  store i32 %113, i32* %12, align 4
  br label %134

114:                                              ; preds = %103
  %115 = load %struct.ila_lwt*, %struct.ila_lwt** %10, align 8
  %116 = getelementptr inbounds %struct.ila_lwt, %struct.ila_lwt* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.ila_lwt*, %struct.ila_lwt** %10, align 8
  %121 = getelementptr inbounds %struct.ila_lwt, %struct.ila_lwt* %120, i32 0, i32 0
  %122 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %123 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 0
  %124 = call i32 @dst_cache_set_ip6(i32* %121, %struct.dst_entry* %122, i32* %123)
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %63
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %129 = call i32 @skb_dst_set(%struct.sk_buff* %127, %struct.dst_entry* %128)
  %130 = load %struct.net*, %struct.net** %5, align 8
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call i32 @dst_output(%struct.net* %130, %struct.sock* %131, %struct.sk_buff* %132)
  store i32 %133, i32* %4, align 4
  br label %138

134:                                              ; preds = %111, %98, %31
  %135 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %136 = call i32 @kfree_skb(%struct.sk_buff* %135)
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %126, %53
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.ila_lwt* @ila_lwt_lwtunnel(%struct.TYPE_5__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ila_update_ipv6_locator(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ila_params_lwtunnel(%struct.TYPE_5__*) #1

declare dso_local %struct.dst_entry* @dst_cache_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32* @rt6_nexthop(%struct.rt6_info*, i32*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi6*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, %struct.dst_entry*, i32, i32*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @dst_cache_set_ip6(i32*, %struct.dst_entry*, i32*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
