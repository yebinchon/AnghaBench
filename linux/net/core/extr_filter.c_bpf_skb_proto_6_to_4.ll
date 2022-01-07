; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_proto_6_to_4.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_proto_6_to_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bpf_skb_proto_6_to_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_skb_proto_6_to_4(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.skb_shared_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @skb_mac_header_len(%struct.sk_buff* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i64 @skb_is_gso(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @skb_is_gso_tcp(%struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %13, %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @skb_unclone(%struct.sk_buff* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %84

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @bpf_skb_net_hdr_pop(%struct.sk_buff* %32, i32 %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %84

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i64 @skb_is_gso(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %47)
  store %struct.skb_shared_info* %48, %struct.skb_shared_info** %7, align 8
  %49 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %50 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %46
  %56 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %59 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %63 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %64 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %55, %46
  %68 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %69 = call i32 @skb_increase_gso_size(%struct.skb_shared_info* %68, i32 0)
  %70 = load i32, i32* @SKB_GSO_DODGY, align 4
  %71 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %72 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %76 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %42
  %78 = load i32, i32* @ETH_P_IP, align 4
  %79 = call i32 @htons(i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call i32 @skb_clear_hash(%struct.sk_buff* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %40, %29, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @skb_mac_header_len(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso_tcp(%struct.sk_buff*) #1

declare dso_local i32 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bpf_skb_net_hdr_pop(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_increase_gso_size(%struct.skb_shared_info*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
