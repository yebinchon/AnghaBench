; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_is_new_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_is_new_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.sctp_chunkhdr = type { i32, i32 }

@SCTP_CID_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_iphdr*)* @is_new_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_new_conn(%struct.sk_buff* %0, %struct.ip_vs_iphdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_iphdr*, align 8
  %6 = alloca %struct.tcphdr, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.sctp_chunkhdr*, align 8
  %9 = alloca %struct.sctp_chunkhdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_iphdr* %1, %struct.ip_vs_iphdr** %5, align 8
  %10 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %5, align 8
  %11 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %47 [
    i32 128, label %13
    i32 129, label %26
  ]

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %5, align 8
  %16 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %14, i32 %17, i32 8, %struct.tcphdr* %6)
  store %struct.tcphdr* %18, %struct.tcphdr** %7, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %20 = icmp eq %struct.tcphdr* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %13
  %23 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %24 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %5, align 8
  %29 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = bitcast %struct.sctp_chunkhdr* %9 to %struct.tcphdr*
  %35 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %27, i32 %33, i32 8, %struct.tcphdr* %34)
  %36 = bitcast %struct.tcphdr* %35 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %36, %struct.sctp_chunkhdr** %8, align 8
  %37 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %38 = icmp eq %struct.sctp_chunkhdr* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %48

40:                                               ; preds = %26
  %41 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %8, align 8
  %42 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SCTP_CID_INIT, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40, %39, %22, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
