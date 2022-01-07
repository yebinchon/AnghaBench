; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_pkt_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_app_pkt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, %struct.ip_vs_app* }
%struct.ip_vs_app = type { i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)* }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_app_pkt_in(%struct.ip_vs_conn* %0, %struct.sk_buff* %1, %struct.ip_vs_iphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_iphdr*, align 8
  %8 = alloca %struct.ip_vs_app*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_iphdr* %2, %struct.ip_vs_iphdr** %7, align 8
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 1
  %11 = load %struct.ip_vs_app*, %struct.ip_vs_app** %10, align 8
  store %struct.ip_vs_app* %11, %struct.ip_vs_app** %8, align 8
  %12 = icmp eq %struct.ip_vs_app* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPPROTO_TCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %24 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %25 = call i32 @app_tcp_pkt_in(%struct.ip_vs_conn* %21, %struct.sk_buff* %22, %struct.ip_vs_app* %23, %struct.ip_vs_iphdr* %24)
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %14
  %27 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %28 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %27, i32 0, i32 0
  %29 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)** %28, align 8
  %30 = icmp eq i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %34 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %33, i32 0, i32 0
  %35 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)** %34, align 8
  %36 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %37 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %7, align 8
  %40 = call i32 %35(%struct.ip_vs_app* %36, %struct.ip_vs_conn* %37, %struct.sk_buff* %38, i32* null, %struct.ip_vs_iphdr* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %31, %20, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @app_tcp_pkt_in(%struct.ip_vs_conn*, %struct.sk_buff*, %struct.ip_vs_app*, %struct.ip_vs_iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
