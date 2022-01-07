; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response_icmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_conn = type { i32, i32 }
%struct.ip_vs_protocol = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@IP_VS_CONN_F_MASQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Forward ICMP: failed checksum from %s!\0A\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@IP_VS_CONN_F_NFCT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %union.nf_inet_addr*, i64, %struct.ip_vs_conn*, %struct.ip_vs_protocol*, i32, i32, i32)* @handle_response_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_response_icmp(i32 %0, %struct.sk_buff* %1, %union.nf_inet_addr* %2, i64 %3, %struct.ip_vs_conn* %4, %struct.ip_vs_protocol* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %union.nf_inet_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ip_vs_conn*, align 8
  %15 = alloca %struct.ip_vs_protocol*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.ip_vs_conn* %4, %struct.ip_vs_conn** %14, align 8
  store %struct.ip_vs_protocol* %5, %struct.ip_vs_protocol** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* @NF_DROP, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %22 = call i64 @IP_VS_FWD_METHOD(%struct.ip_vs_conn* %21)
  %23 = load i64, i64* @IP_VS_CONN_F_MASQ, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  br label %97

26:                                               ; preds = %9
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = call i32 @skb_csum_unnecessary(%struct.sk_buff* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i64 @ip_vs_checksum_complete(%struct.sk_buff* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = load %union.nf_inet_addr*, %union.nf_inet_addr** %12, align 8
  %38 = call i32 @IP_VS_DBG_ADDR(i32 %36, %union.nf_inet_addr* %37)
  %39 = call i32 @IP_VS_DBG_BUF(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %99

40:                                               ; preds = %30, %26
  %41 = load i64, i64* @IPPROTO_TCP, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @IPPROTO_UDP, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @IPPROTO_SCTP, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %44, %40
  %53 = load i32, i32* %16, align 4
  %54 = zext i32 %53 to i64
  %55 = add i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @skb_ensure_writable(%struct.sk_buff* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %99

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %15, align 8
  %66 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %67 = call i32 @ip_vs_nat_icmp(%struct.sk_buff* %64, %struct.ip_vs_protocol* %65, %struct.ip_vs_conn* %66, i32 1)
  %68 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %69 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i64 @ip_vs_route_me_harder(i32 %70, i32 %71, %struct.sk_buff* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %99

77:                                               ; preds = %63
  %78 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = call i32 @ip_vs_out_stats(%struct.ip_vs_conn* %78, %struct.sk_buff* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IP_VS_CONN_F_NFCT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %91 = call i32 @ip_vs_notrack(%struct.sk_buff* %90)
  br label %96

92:                                               ; preds = %77
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %95 = call i32 @ip_vs_update_conntrack(%struct.sk_buff* %93, %struct.ip_vs_conn* %94, i32 0)
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96, %25
  %98 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %97, %76, %62, %35
  %100 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %14, align 8
  %101 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %100)
  %102 = load i32, i32* %19, align 4
  ret i32 %102
}

declare dso_local i64 @IP_VS_FWD_METHOD(%struct.ip_vs_conn*) #1

declare dso_local i32 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i64 @ip_vs_checksum_complete(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, %union.nf_inet_addr*) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_nat_icmp(%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*, i32) #1

declare dso_local i64 @ip_vs_route_me_harder(i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_out_stats(%struct.ip_vs_conn*, %struct.sk_buff*) #1

declare dso_local i32 @ip_vs_notrack(%struct.sk_buff*) #1

declare dso_local i32 @ip_vs_update_conntrack(%struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
