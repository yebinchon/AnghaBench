; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_netfilter.c_ip6_route_me_harder.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_netfilter.c_ip6_route_me_harder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ip6_route_me_harder: No more route\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IP6SKB_XFRM_TRANSFORMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_route_me_harder(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flowi6, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %13)
  store %struct.ipv6hdr* %14, %struct.ipv6hdr** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sock* @sk_to_full_sk(i32 %17)
  store %struct.sock* %18, %struct.sock** %7, align 8
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 1
  %21 = call i32 @ipv6_addr_type(i32* %20)
  %22 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %23 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %11, i32 0, i32 0
  %27 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %28 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %11, i32 0, i32 1
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %11, i32 0, i32 2
  %35 = load %struct.net*, %struct.net** %4, align 8
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call i32 @sock_net_uid(%struct.net* %35, %struct.sock* %36)
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %11, i32 0, i32 3
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %11, i32 0, i32 4
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = icmp ne %struct.sock* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load %struct.sock*, %struct.sock** %7, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %67

54:                                               ; preds = %45, %2
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi i32 [ %63, %57 ], [ 0, %64 ]
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi i32 [ %53, %50 ], [ %66, %65 ]
  store i32 %68, i32* %42, align 4
  %69 = load %struct.net*, %struct.net** %4, align 8
  %70 = load %struct.sock*, %struct.sock** %7, align 8
  %71 = call %struct.dst_entry* @ip6_route_output(%struct.net* %69, %struct.sock* %70, %struct.flowi6* %11)
  store %struct.dst_entry* %71, %struct.dst_entry** %9, align 8
  %72 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %73 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load %struct.net*, %struct.net** %4, align 8
  %79 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %80 = call i32 @ip6_dst_idev(%struct.dst_entry* %79)
  %81 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %82 = call i32 @IP6_INC_STATS(%struct.net* %78, i32 %80, i32 %81)
  %83 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %85 = call i32 @dst_release(%struct.dst_entry* %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %117

87:                                               ; preds = %67
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @skb_dst_drop(%struct.sk_buff* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %92 = call i32 @skb_dst_set(%struct.sk_buff* %90, %struct.dst_entry* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @skb_headroom(%struct.sk_buff* %99)
  %101 = load i32, i32* %8, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %87
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @skb_headroom(%struct.sk_buff* %106)
  %108 = sub i32 %105, %107
  %109 = call i32 @HH_DATA_ALIGN(i32 %108)
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call i64 @pskb_expand_head(%struct.sk_buff* %104, i32 %109, i32 0, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %117

116:                                              ; preds = %103, %87
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %113, %77
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock* @sk_to_full_sk(i32) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @sock_net_uid(%struct.net*, %struct.sock*) #1

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, %struct.sock*, %struct.flowi6*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @HH_DATA_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
