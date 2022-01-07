; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_check_iphdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_igmp.c_ip_mc_check_iphdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip_mc_check_iphdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_check_iphdr(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @skb_network_offset(%struct.sk_buff* %7)
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 12
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %4, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @ip_hdrlen(%struct.sk_buff* %27)
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 12
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %88

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 @ip_hdrlen(%struct.sk_buff* %35)
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 12
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pskb_may_pull(%struct.sk_buff* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %88

50:                                               ; preds = %34
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %51)
  store %struct.iphdr* %52, %struct.iphdr** %4, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %54 = bitcast %struct.iphdr* %53 to i32*
  %55 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ip_fast_csum(i32* %54, i32 %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %88

64:                                               ; preds = %50
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32 @skb_network_offset(%struct.sk_buff* %65)
  %67 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ntohs(i32 %69)
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %5, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %64
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @skb_set_transport_header(%struct.sk_buff* %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %81, %61, %47, %31, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
