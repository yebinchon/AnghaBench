; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_reject_ipv4.c_nf_reject_iphdr_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_reject_ipv4.c_nf_reject_iphdr_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i32, i32, i32, i64, i32, i8*, i64, i64 }
%struct.sk_buff = type { i8* }

@IP_DF = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iphdr* @nf_reject_iphdr_put(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @skb_reset_network_header(%struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.iphdr* @skb_put(%struct.sk_buff* %15, i32 64)
  store %struct.iphdr* %16, %struct.iphdr** %9, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  store i32 16, i32* %20, align 4
  %21 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @IP_DF, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @ETH_P_IP, align 4
  %48 = call i8* @htons(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  ret %struct.iphdr* %51
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
