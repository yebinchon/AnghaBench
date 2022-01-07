; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_gso_transport_seglen.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_gso_transport_seglen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.skb_shared_info = type { i32, i32 }

@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @skb_gso_transport_seglen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_gso_transport_seglen(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.skb_shared_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %5)
  store %struct.skb_shared_info* %6, %struct.skb_shared_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call i32 @skb_inner_transport_header(%struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i32 @skb_transport_header(%struct.sk_buff* %14)
  %16 = sub i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %18 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %21 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %11
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = call i64 @inner_tcp_hdrlen(%struct.sk_buff* %27)
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %11
  br label %64

34:                                               ; preds = %1
  %35 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %36 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %39 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = call i32 @tcp_hdrlen(%struct.sk_buff* %45)
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = call i32 @skb_is_gso_sctp(%struct.sk_buff* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 4, i32* %4, align 4
  br label %62

53:                                               ; preds = %47
  %54 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %55 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 4, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %53
  br label %62

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %67 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %65, %68
  ret i32 %69
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @inner_tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_is_gso_sctp(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
