; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_proto_4_to_6.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_proto_4_to_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bpf_skb_proto_4_to_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_skb_proto_4_to_6(%struct.sk_buff* %0) #0 {
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
  br label %83

20:                                               ; preds = %13, %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 @skb_cow(%struct.sk_buff* %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @bpf_skb_net_hdr_push(%struct.sk_buff* %31, i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %83

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i64 @skb_is_gso(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %46)
  store %struct.skb_shared_info* %47, %struct.skb_shared_info** %7, align 8
  %48 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %49 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %58 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %62 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %63 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %54, %45
  %67 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %68 = call i32 @skb_decrease_gso_size(%struct.skb_shared_info* %67, i32 0)
  %69 = load i32, i32* @SKB_GSO_DODGY, align 4
  %70 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %71 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %75 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %41
  %77 = load i32, i32* @ETH_P_IPV6, align 4
  %78 = call i32 @htons(i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call i32 @skb_clear_hash(%struct.sk_buff* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %39, %28, %17
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @skb_mac_header_len(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso_tcp(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bpf_skb_net_hdr_push(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_decrease_gso_size(%struct.skb_shared_info*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
