; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_do_srh_inline.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_do_srh_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ipv6_sr_hdr = type { i32, i64, i32*, i32 }
%struct.ipv6hdr = type { i32, i32, i32 }

@NEXTHDR_ROUTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_do_srh_inline(%struct.sk_buff* %0, %struct.ipv6_sr_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6_sr_hdr*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.ipv6_sr_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipv6_sr_hdr* %1, %struct.ipv6_sr_hdr** %5, align 8
  %11 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = shl i32 %14, 3
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @skb_cow_head(%struct.sk_buff* %16, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %93

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %30)
  store %struct.ipv6hdr* %31, %struct.ipv6hdr** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @skb_pull(%struct.sk_buff* %32, i32 12)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @skb_network_header(%struct.sk_buff* %35)
  %37 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %34, i32 %36, i32 12)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 12, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @skb_push(%struct.sk_buff* %38, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @skb_reset_network_header(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @skb_mac_header_rebuild(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %48)
  store %struct.ipv6hdr* %49, %struct.ipv6hdr** %6, align 8
  %50 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %52 = call i32 @memmove(%struct.ipv6hdr* %50, %struct.ipv6hdr* %51, i32 12)
  %53 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %54 = bitcast %struct.ipv6hdr* %53 to i8*
  %55 = getelementptr i8, i8* %54, i64 12
  %56 = bitcast i8* %55 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %56, %struct.ipv6_sr_hdr** %8, align 8
  %57 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %58 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @memcpy(%struct.ipv6_sr_hdr* %57, %struct.ipv6_sr_hdr* %58, i32 %59)
  %61 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %62 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %65 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @NEXTHDR_ROUTING, align 4
  %67 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %68 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %70 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %73 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %77 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %80 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %85 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 12, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %86, %struct.ipv6hdr* %87, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %29, %27
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header_rebuild(%struct.sk_buff*) #1

declare dso_local i32 @memmove(%struct.ipv6hdr*, %struct.ipv6hdr*, i32) #1

declare dso_local i32 @memcpy(%struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr*, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.ipv6hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
