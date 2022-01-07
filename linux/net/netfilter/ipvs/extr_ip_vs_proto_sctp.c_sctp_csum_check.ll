; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_csum_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_csum_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ip_vs_protocol = type { i32 }
%struct.sctphdr = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Failed checksum for\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_protocol*)* @sctp_csum_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_csum_check(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_protocol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_protocol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctphdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_protocol* %2, %struct.ip_vs_protocol** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @ip_hdrlen(%struct.sk_buff* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to %struct.sctphdr*
  store %struct.sctphdr* %20, %struct.sctphdr** %9, align 8
  %21 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %22 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @sctp_compute_cksum(%struct.sk_buff* %24, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @IP_VS_DBG_RL_PKT(i32 0, i32 %31, %struct.ip_vs_protocol* %32, %struct.sk_buff* %33, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %36

35:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @sctp_compute_cksum(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP_VS_DBG_RL_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
