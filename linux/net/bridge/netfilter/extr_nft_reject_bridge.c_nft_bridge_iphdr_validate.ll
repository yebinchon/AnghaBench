; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_bridge_iphdr_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_bridge_iphdr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @nft_bridge_iphdr_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_bridge_iphdr_validate(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @pskb_may_pull(%struct.sk_buff* %6, i32 12)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %4, align 8
  %13 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %10
  store i32 0, i32* %2, align 4
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %53

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %53

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 4
  %49 = call i32 @pskb_may_pull(%struct.sk_buff* %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %53

52:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51, %41, %33, %22, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
