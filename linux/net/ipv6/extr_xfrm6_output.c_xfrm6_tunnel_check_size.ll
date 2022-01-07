; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c_xfrm6_tunnel_check_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c_xfrm6_tunnel_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32, i64 }
%struct.dst_entry = type { i32 }

@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @xfrm6_tunnel_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_tunnel_check_size(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %6)
  store %struct.dst_entry* %7, %struct.dst_entry** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %77

13:                                               ; preds = %1
  %14 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %15 = call i32 @dst_mtu(%struct.dst_entry* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IPV6_MIN_MTU, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @IPV6_MIN_MTU, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = call i64 @skb_is_gso(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call i64 @skb_is_gso(%struct.sk_buff* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call i32 @ip6_skb_dst_mtu(%struct.sk_buff* %37)
  %39 = call i32 @skb_gso_validate_network_len(%struct.sk_buff* %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %43 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ETH_P_IPV6, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call i64 @xfrm6_local_dontfrag(%struct.sk_buff* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @xfrm6_local_rxpmtu(%struct.sk_buff* %55, i32 %56)
  br label %73

58:                                               ; preds = %41
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @xfrm_local_error(%struct.sk_buff* %64, i32 %65)
  br label %72

67:                                               ; preds = %58
  %68 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %69 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @icmpv6_send(%struct.sk_buff* %68, i32 %69, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %35, %31
  br label %77

77:                                               ; preds = %76, %12
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_gso_validate_network_len(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip6_skb_dst_mtu(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @xfrm6_local_dontfrag(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_local_rxpmtu(%struct.sk_buff*, i32) #1

declare dso_local i32 @xfrm_local_error(%struct.sk_buff*, i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
