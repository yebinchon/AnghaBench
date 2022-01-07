; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_eui64.c_eui64_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_eui64.c_eui64_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.xt_action_param = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @eui64_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eui64_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca [8 x i8], align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i64 @skb_mac_header(%struct.sk_buff* %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_mac_header(%struct.sk_buff* %14)
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %24 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %29 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %81

30:                                               ; preds = %22, %13
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 0, i32 8)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_P_IPV6, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i8* %47, i64 %51, i32 3)
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 5
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_6__* @eth_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 3
  %60 = call i32 @memcpy(i8* %54, i64 %59, i32 3)
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  store i8 -1, i8* %61, align 1
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  store i8 -2, i8* %62, align 1
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = xor i32 %65, 2
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 8
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %75 = call i32 @memcmp(i64 %73, i8* %74, i32 8)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %81

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78, %40
  br label %80

80:                                               ; preds = %79, %30
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
