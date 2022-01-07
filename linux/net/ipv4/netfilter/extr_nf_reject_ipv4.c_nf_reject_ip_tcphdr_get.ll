; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_reject_ipv4.c_nf_reject_ip_tcphdr_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_reject_ipv4.c_nf_reject_ip_tcphdr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64 }
%struct.TYPE_2__ = type { i32, i64 }

@IP_OFFSET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcphdr* @nf_reject_ip_tcphdr_get(%struct.sk_buff* %0, %struct.tcphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IP_OFFSET, align 4
  %14 = call i32 @htons(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.tcphdr* null, %struct.tcphdr** %4, align 8
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPPROTO_TCP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store %struct.tcphdr* null, %struct.tcphdr** %4, align 8
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @ip_hdrlen(%struct.sk_buff* %28)
  %30 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %31 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %27, i32 %29, i32 8, %struct.tcphdr* %30)
  store %struct.tcphdr* %31, %struct.tcphdr** %8, align 8
  %32 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %33 = icmp eq %struct.tcphdr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store %struct.tcphdr* null, %struct.tcphdr** %4, align 8
  br label %52

35:                                               ; preds = %26
  %36 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.tcphdr* null, %struct.tcphdr** %4, align 8
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @ip_hdrlen(%struct.sk_buff* %44)
  %46 = load i64, i64* @IPPROTO_TCP, align 8
  %47 = call i64 @nf_ip_checksum(%struct.sk_buff* %42, i32 %43, i32 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store %struct.tcphdr* null, %struct.tcphdr** %4, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  store %struct.tcphdr* %51, %struct.tcphdr** %4, align 8
  br label %52

52:                                               ; preds = %50, %49, %40, %34, %25, %17
  %53 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  ret %struct.tcphdr* %53
}

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @nf_ip_checksum(%struct.sk_buff*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
