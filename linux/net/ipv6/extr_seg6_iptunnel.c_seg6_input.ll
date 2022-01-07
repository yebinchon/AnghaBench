; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_iptunnel.c_seg6_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32, i32, i32 }
%struct.seg6_lwt = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @seg6_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.seg6_lwt*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %4, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i32 @seg6_do_srh(%struct.sk_buff* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.seg6_lwt* @seg6_lwt_lwtunnel(i32 %22)
  store %struct.seg6_lwt* %23, %struct.seg6_lwt** %6, align 8
  %24 = call i32 (...) @preempt_disable()
  %25 = load %struct.seg6_lwt*, %struct.seg6_lwt** %6, align 8
  %26 = getelementptr inbounds %struct.seg6_lwt, %struct.seg6_lwt* %25, i32 0, i32 0
  %27 = call %struct.dst_entry* @dst_cache_get(i32* %26)
  store %struct.dst_entry* %27, %struct.dst_entry** %5, align 8
  %28 = call i32 (...) @preempt_enable()
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @skb_dst_drop(%struct.sk_buff* %29)
  %31 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %32 = icmp ne %struct.dst_entry* %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %19
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32 @ip6_route_input(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %36)
  store %struct.dst_entry* %37, %struct.dst_entry** %5, align 8
  %38 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %39 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %33
  %43 = call i32 (...) @preempt_disable()
  %44 = load %struct.seg6_lwt*, %struct.seg6_lwt** %6, align 8
  %45 = getelementptr inbounds %struct.seg6_lwt, %struct.seg6_lwt* %44, i32 0, i32 0
  %46 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dst_cache_set_ip6(i32* %45, %struct.dst_entry* %46, i32* %49)
  %51 = call i32 (...) @preempt_enable()
  br label %52

52:                                               ; preds = %42, %33
  br label %57

53:                                               ; preds = %19
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %56 = call i32 @skb_dst_set(%struct.sk_buff* %54, %struct.dst_entry* %55)
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %60 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @LL_RESERVED_SPACE(i32 %61)
  %63 = call i32 @skb_cow_head(%struct.sk_buff* %58, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %57
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i32 @dst_input(%struct.sk_buff* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %67, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @seg6_do_srh(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.seg6_lwt* @seg6_lwt_lwtunnel(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.dst_entry* @dst_cache_get(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @ip6_route_input(%struct.sk_buff*) #1

declare dso_local i32 @dst_cache_set_ip6(i32*, %struct.dst_entry*, i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(i32) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
