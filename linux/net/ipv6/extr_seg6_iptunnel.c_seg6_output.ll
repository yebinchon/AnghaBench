; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32, i32, i32 }
%struct.seg6_lwt = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @seg6_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.seg6_lwt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipv6hdr*, align 8
  %13 = alloca %struct.flowi6, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %14)
  store %struct.dst_entry* %15, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @seg6_do_srh(%struct.sk_buff* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %104

24:                                               ; preds = %3
  %25 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.seg6_lwt* @seg6_lwt_lwtunnel(i32 %27)
  store %struct.seg6_lwt* %28, %struct.seg6_lwt** %10, align 8
  %29 = call i32 (...) @preempt_disable()
  %30 = load %struct.seg6_lwt*, %struct.seg6_lwt** %10, align 8
  %31 = getelementptr inbounds %struct.seg6_lwt, %struct.seg6_lwt* %30, i32 0, i32 0
  %32 = call %struct.dst_entry* @dst_cache_get(i32* %31)
  store %struct.dst_entry* %32, %struct.dst_entry** %9, align 8
  %33 = call i32 (...) @preempt_enable()
  %34 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %35 = icmp ne %struct.dst_entry* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %24
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %41)
  store %struct.ipv6hdr* %42, %struct.ipv6hdr** %12, align 8
  %43 = call i32 @memset(%struct.flowi6* %13, i32 0, i32 20)
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %45 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %49 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %53 = call i32 @ip6_flowinfo(%struct.ipv6hdr* %52)
  %54 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %60 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.net*, %struct.net** %5, align 8
  %64 = call %struct.dst_entry* @ip6_route_output(%struct.net* %63, i32* null, %struct.flowi6* %13)
  store %struct.dst_entry* %64, %struct.dst_entry** %9, align 8
  %65 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %66 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %40
  %70 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %71 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %74 = call i32 @dst_release(%struct.dst_entry* %73)
  br label %104

75:                                               ; preds = %40
  %76 = call i32 (...) @preempt_disable()
  %77 = load %struct.seg6_lwt*, %struct.seg6_lwt** %10, align 8
  %78 = getelementptr inbounds %struct.seg6_lwt, %struct.seg6_lwt* %77, i32 0, i32 0
  %79 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %80 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  %81 = call i32 @dst_cache_set_ip6(i32* %78, %struct.dst_entry* %79, i32* %80)
  %82 = call i32 (...) @preempt_enable()
  br label %83

83:                                               ; preds = %75, %24
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i32 @skb_dst_drop(%struct.sk_buff* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %88 = call i32 @skb_dst_set(%struct.sk_buff* %86, %struct.dst_entry* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %91 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @LL_RESERVED_SPACE(i32 %92)
  %94 = call i32 @skb_cow_head(%struct.sk_buff* %89, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %83
  br label %104

99:                                               ; preds = %83
  %100 = load %struct.net*, %struct.net** %5, align 8
  %101 = load %struct.sock*, %struct.sock** %6, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i32 @dst_output(%struct.net* %100, %struct.sock* %101, %struct.sk_buff* %102)
  store i32 %103, i32* %4, align 4
  br label %108

104:                                              ; preds = %98, %69, %23
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @seg6_do_srh(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.seg6_lwt* @seg6_lwt_lwtunnel(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.dst_entry* @dst_cache_get(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @ip6_flowinfo(%struct.ipv6hdr*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi6*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @dst_cache_set_ip6(i32*, %struct.dst_entry*, i32*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(i32) #1

declare dso_local i32 @dst_output(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
