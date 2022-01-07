; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_app_tcp_pkt_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_app.c_app_tcp_pkt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_app = type { i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)* }
%struct.ip_vs_iphdr = type { i32 }
%struct.tcphdr = type { i32 }

@IP_VS_CONN_F_IN_SEQ = common dso_local global i32 0, align 4
@IP_VS_CONN_F_OUT_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*, %struct.sk_buff*, %struct.ip_vs_app*, %struct.ip_vs_iphdr*)* @app_tcp_pkt_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_tcp_pkt_in(%struct.ip_vs_conn* %0, %struct.sk_buff* %1, %struct.ip_vs_app* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_vs_app*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ip_vs_app* %2, %struct.ip_vs_app** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i32 @ip_hdrlen(%struct.sk_buff* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i64 @skb_ensure_writable(%struct.sk_buff* %16, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i64 @skb_network_header(%struct.sk_buff* %25)
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = inttoptr i64 %29 to %struct.tcphdr*
  store %struct.tcphdr* %30, %struct.tcphdr** %12, align 8
  %31 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %32 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %36 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IP_VS_CONN_F_IN_SEQ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %42, i32 0, i32 1
  %44 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %45 = call i32 @vs_fix_seq(i32* %43, %struct.tcphdr* %44)
  br label %46

46:                                               ; preds = %41, %24
  %47 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %48 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IP_VS_CONN_F_OUT_SEQ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %55 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %54, i32 0, i32 2
  %56 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %57 = call i32 @vs_fix_ack_seq(i32* %55, %struct.tcphdr* %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %60 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %59, i32 0, i32 0
  %61 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)** %60, align 8
  %62 = icmp eq i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %87

64:                                               ; preds = %58
  %65 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %66 = getelementptr inbounds %struct.ip_vs_app, %struct.ip_vs_app* %65, i32 0, i32 0
  %67 = load i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)*, i32 (%struct.ip_vs_app*, %struct.ip_vs_conn*, %struct.sk_buff*, i32*, %struct.ip_vs_iphdr*)** %66, align 8
  %68 = load %struct.ip_vs_app*, %struct.ip_vs_app** %8, align 8
  %69 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %72 = call i32 %67(%struct.ip_vs_app* %68, %struct.ip_vs_conn* %69, %struct.sk_buff* %70, i32* %10, %struct.ip_vs_iphdr* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %87

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %80 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %81 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %80, i32 0, i32 1
  %82 = load i32, i32* @IP_VS_CONN_F_IN_SEQ, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @vs_seq_update(%struct.ip_vs_conn* %79, i32* %81, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %74, %63, %23
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @vs_fix_seq(i32*, %struct.tcphdr*) #1

declare dso_local i32 @vs_fix_ack_seq(i32*, %struct.tcphdr*) #1

declare dso_local i32 @vs_seq_update(%struct.ip_vs_conn*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
