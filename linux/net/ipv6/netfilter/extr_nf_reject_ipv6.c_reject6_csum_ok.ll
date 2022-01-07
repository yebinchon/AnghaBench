; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_reject6_csum_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_reject_ipv6.c_reject6_csum_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.ipv6hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @reject6_csum_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject6_csum_ok(%struct.sk_buff* %0, i32 %1) #0 {
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
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i64 1
  %23 = bitcast %struct.ipv6hdr* %22 to i32*
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %20, i32* %29, i32* %9, i32* %8)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @htons(i32 -8)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %33, %16
  store i32 0, i32* %3, align 4
  br label %58

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @nf_reject_verify_csum(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %58

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @nf_ip6_checksum(%struct.sk_buff* %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %49, %44, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

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
