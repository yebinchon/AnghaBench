; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_data_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ftp.c_ip_vs_ftp_data_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ip_vs_iphdr = type { i32 }
%struct.tcphdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sk_buff*, %struct.ip_vs_iphdr*)* @ip_vs_ftp_data_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ip_vs_ftp_data_ptr(%struct.sk_buff* %0, %struct.ip_vs_iphdr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_iphdr*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_iphdr* %1, %struct.ip_vs_iphdr** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %5, align 8
  %12 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %10, i64 %14
  %16 = bitcast i8* %15 to %struct.tcphdr*
  store %struct.tcphdr* %16, %struct.tcphdr** %6, align 8
  %17 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %18 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %26 = bitcast %struct.tcphdr* %25 to i8*
  %27 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
