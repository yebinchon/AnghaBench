; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_proto_data = type { %struct.ip_vs_protocol* }
%struct.ip_vs_protocol = type { i64 }
%struct.ip_vs_conn = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ip_vs_iphdr = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Outgoing packet\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"After SNAT\00", align 1
@IP_VS_DIR_OUTPUT = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NFCT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_proto_data*, %struct.ip_vs_conn*, %struct.ip_vs_iphdr*, i32)* @handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_response(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_proto_data* %2, %struct.ip_vs_conn* %3, %struct.ip_vs_iphdr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ip_vs_proto_data*, align 8
  %11 = alloca %struct.ip_vs_conn*, align 8
  %12 = alloca %struct.ip_vs_iphdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_vs_protocol*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.ip_vs_proto_data* %2, %struct.ip_vs_proto_data** %10, align 8
  store %struct.ip_vs_conn* %3, %struct.ip_vs_conn** %11, align 8
  store %struct.ip_vs_iphdr* %4, %struct.ip_vs_iphdr** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %10, align 8
  %16 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %15, i32 0, i32 0
  %17 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %16, align 8
  store %struct.ip_vs_protocol* %17, %struct.ip_vs_protocol** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %12, align 8
  %22 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IP_VS_DBG_PKT(i32 11, i32 %18, %struct.ip_vs_protocol* %19, %struct.sk_buff* %20, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %12, align 8
  %27 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @skb_ensure_writable(%struct.sk_buff* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  br label %104

32:                                               ; preds = %6
  %33 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %14, align 8
  %34 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %14, align 8
  %39 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %14, align 8
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %44 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %12, align 8
  %45 = call i32 @SNAT_CALL(i64 %40, %struct.sk_buff* %41, %struct.ip_vs_protocol* %42, %struct.ip_vs_conn* %43, %struct.ip_vs_iphdr* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %104

48:                                               ; preds = %37, %32
  %49 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %50 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %56)
  %58 = call i32 @ip_send_check(%struct.TYPE_7__* %57)
  %59 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %60 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @ip_vs_route_me_harder(i32 %61, i32 %62, %struct.sk_buff* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %48
  br label %104

68:                                               ; preds = %48
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %14, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %12, align 8
  %73 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IP_VS_DBG_PKT(i32 10, i32 %69, %struct.ip_vs_protocol* %70, %struct.sk_buff* %71, i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @ip_vs_out_stats(%struct.ip_vs_conn* %76, %struct.sk_buff* %77)
  %79 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %80 = load i32, i32* @IP_VS_DIR_OUTPUT, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %10, align 8
  %83 = call i32 @ip_vs_set_state(%struct.ip_vs_conn* %79, i32 %80, %struct.sk_buff* %81, %struct.ip_vs_proto_data* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %87 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IP_VS_CONN_F_NFCT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %68
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = call i32 @ip_vs_notrack(%struct.sk_buff* %93)
  br label %99

95:                                               ; preds = %68
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %98 = call i32 @ip_vs_update_conntrack(%struct.sk_buff* %96, %struct.ip_vs_conn* %97, i32 0)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %101 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %100)
  %102 = call i32 @LeaveFunction(i32 11)
  %103 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %103, i32* %7, align 4
  br label %111

104:                                              ; preds = %67, %47, %31
  %105 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %11, align 8
  %106 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = call i32 @LeaveFunction(i32 11)
  %110 = load i32, i32* @NF_STOLEN, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @IP_VS_DBG_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @SNAT_CALL(i64, %struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*, %struct.ip_vs_iphdr*) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_send_check(%struct.TYPE_7__*) #1

declare dso_local i64 @ip_vs_route_me_harder(i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_out_stats(%struct.ip_vs_conn*, %struct.sk_buff*) #1

declare dso_local i32 @ip_vs_set_state(%struct.ip_vs_conn*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*) #1

declare dso_local i32 @ip_vs_notrack(%struct.sk_buff*) #1

declare dso_local i32 @ip_vs_update_conntrack(%struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @ip_vs_conn_put(%struct.ip_vs_conn*) #1

declare dso_local i32 @LeaveFunction(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
