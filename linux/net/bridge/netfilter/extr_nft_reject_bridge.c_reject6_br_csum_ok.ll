; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_reject6_br_csum_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_reject6_br_csum_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ipv6hdr = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @reject6_br_csum_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject6_br_csum_ok(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %10)
  store %struct.ipv6hdr* %11, %struct.ipv6hdr** %6, align 8
  %12 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %13 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %21 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @ntohs(i64 %28)
  %30 = add i64 %29, 16
  %31 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %25, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %75

34:                                               ; preds = %24, %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %35)
  store %struct.ipv6hdr* %36, %struct.ipv6hdr** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i64 1
  %40 = bitcast %struct.ipv6hdr* %39 to i32*
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %37, i32* %46, i32* %9, i32* %8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @htons(i32 -8)
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %50, %34
  store i32 0, i32* %3, align 4
  br label %75

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nf_reject_verify_csum(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %75

67:                                               ; preds = %62
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @nf_ip6_checksum(%struct.sk_buff* %68, i32 %69, i32 %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %66, %61, %33, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i64) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nf_reject_verify_csum(i32) #1

declare dso_local i64 @nf_ip6_checksum(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
