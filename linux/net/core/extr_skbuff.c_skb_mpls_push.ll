; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mpls_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_mpls_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.mpls_shim_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MPLS_HLEN = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_mpls_push(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpls_shim_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @eth_p_mpls(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %101

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %101

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i64, i64* @MPLS_HLEN, align 8
  %33 = call i32 @skb_cow_head(%struct.sk_buff* %31, i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %101

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @skb_set_inner_network_header(%struct.sk_buff* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @skb_set_inner_protocol(%struct.sk_buff* %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i64, i64* @MPLS_HLEN, align 8
  %56 = call i32 @skb_push(%struct.sk_buff* %54, i64 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i64 @skb_mac_header(%struct.sk_buff* %57)
  %59 = load i64, i64* @MPLS_HLEN, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i64 @skb_mac_header(%struct.sk_buff* %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memmove(i64 %60, i64 %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @skb_reset_mac_header(%struct.sk_buff* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @skb_set_network_header(%struct.sk_buff* %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff* %70)
  store %struct.mpls_shim_hdr* %71, %struct.mpls_shim_hdr** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %10, align 8
  %74 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %10, align 8
  %77 = load i64, i64* @MPLS_HLEN, align 8
  %78 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %75, %struct.mpls_shim_hdr* %76, i64 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp ne %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %53
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ARPHRD_ETHER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @eth_hdr(%struct.sk_buff* %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @skb_mod_eth_type(%struct.sk_buff* %92, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %83, %53
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %37, %27, %19
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_p_mpls(i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_set_inner_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_inner_protocol(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.mpls_shim_hdr*, i64) #1

declare dso_local i32 @skb_mod_eth_type(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
