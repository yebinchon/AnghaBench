; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_try_to_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_try_to_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_proto_data = type { %struct.ip_vs_protocol* }
%struct.ip_vs_protocol = type { i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data.0*, i32*, %struct.ip_vs_conn**, %struct.ip_vs_iphdr*)* }
%struct.ip_vs_proto_data.0 = type opaque
%struct.ip_vs_conn = type opaque
%struct.ip_vs_iphdr = type opaque
%struct.ip_vs_conn.1 = type { i32 }
%struct.ip_vs_iphdr.2 = type { i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"ip_vs_in: packet continues traversal as normal\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unhandled fragment\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data*, i32*, %struct.ip_vs_conn.1**, %struct.ip_vs_iphdr.2*)* @ip_vs_try_to_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_try_to_schedule(%struct.netns_ipvs* %0, i32 %1, %struct.sk_buff* %2, %struct.ip_vs_proto_data* %3, i32* %4, %struct.ip_vs_conn.1** %5, %struct.ip_vs_iphdr.2* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.netns_ipvs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ip_vs_proto_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ip_vs_conn.1**, align 8
  %15 = alloca %struct.ip_vs_iphdr.2*, align 8
  %16 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store %struct.ip_vs_proto_data* %3, %struct.ip_vs_proto_data** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.ip_vs_conn.1** %5, %struct.ip_vs_conn.1*** %14, align 8
  store %struct.ip_vs_iphdr.2* %6, %struct.ip_vs_iphdr.2** %15, align 8
  %17 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, align 8
  %18 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %17, i32 0, i32 0
  %19 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %18, align 8
  store %struct.ip_vs_protocol* %19, %struct.ip_vs_protocol** %16, align 8
  %20 = load %struct.ip_vs_iphdr.2*, %struct.ip_vs_iphdr.2** %15, align 8
  %21 = getelementptr inbounds %struct.ip_vs_iphdr.2, %struct.ip_vs_iphdr.2* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %7
  %25 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %16, align 8
  %26 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %25, i32 0, i32 0
  %27 = load i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data.0*, i32*, %struct.ip_vs_conn**, %struct.ip_vs_iphdr*)*, i32 (%struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_proto_data.0*, i32*, %struct.ip_vs_conn**, %struct.ip_vs_iphdr*)** %26, align 8
  %28 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %12, align 8
  %32 = bitcast %struct.ip_vs_proto_data* %31 to %struct.ip_vs_proto_data.0*
  %33 = load i32*, i32** %13, align 8
  %34 = load %struct.ip_vs_conn.1**, %struct.ip_vs_conn.1*** %14, align 8
  %35 = bitcast %struct.ip_vs_conn.1** %34 to %struct.ip_vs_conn**
  %36 = load %struct.ip_vs_iphdr.2*, %struct.ip_vs_iphdr.2** %15, align 8
  %37 = bitcast %struct.ip_vs_iphdr.2* %36 to %struct.ip_vs_iphdr*
  %38 = call i32 %27(%struct.netns_ipvs* %28, i32 %29, %struct.sk_buff* %30, %struct.ip_vs_proto_data.0* %32, i32* %33, %struct.ip_vs_conn** %35, %struct.ip_vs_iphdr* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %74

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %7
  %43 = load %struct.ip_vs_conn.1**, %struct.ip_vs_conn.1*** %14, align 8
  %44 = load %struct.ip_vs_conn.1*, %struct.ip_vs_conn.1** %43, align 8
  %45 = icmp ne %struct.ip_vs_conn.1* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %16, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = load %struct.ip_vs_iphdr.2*, %struct.ip_vs_iphdr.2** %15, align 8
  %55 = getelementptr inbounds %struct.ip_vs_iphdr.2, %struct.ip_vs_iphdr.2* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @IP_VS_DBG_PKT(i32 12, i32 %51, %struct.ip_vs_protocol* %52, %struct.sk_buff* %53, i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.ip_vs_iphdr.2*, %struct.ip_vs_iphdr.2** %15, align 8
  %59 = getelementptr inbounds %struct.ip_vs_iphdr.2, %struct.ip_vs_iphdr.2* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %16, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = load %struct.ip_vs_iphdr.2*, %struct.ip_vs_iphdr.2** %15, align 8
  %67 = getelementptr inbounds %struct.ip_vs_iphdr.2, %struct.ip_vs_iphdr.2* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @IP_VS_DBG_PKT(i32 7, i32 %63, %struct.ip_vs_protocol* %64, %struct.sk_buff* %65, i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %62, %50
  %71 = load i32, i32* @NF_ACCEPT, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %8, align 4
  br label %74

73:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %70, %40
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
