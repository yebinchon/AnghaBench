; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_snat_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_sctp_snat_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_conn = type { i64, i64, i32* }
%struct.ip_vs_iphdr = type { i32, i64 }
%struct.sctphdr = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_protocol*, %struct.ip_vs_conn*, %struct.ip_vs_iphdr*)* @sctp_snat_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_snat_handler(%struct.sk_buff* %0, %struct.ip_vs_protocol* %1, %struct.ip_vs_conn* %2, %struct.ip_vs_iphdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_protocol*, align 8
  %8 = alloca %struct.ip_vs_conn*, align 8
  %9 = alloca %struct.ip_vs_iphdr*, align 8
  %10 = alloca %struct.sctphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %7, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %8, align 8
  store %struct.ip_vs_iphdr* %3, %struct.ip_vs_iphdr** %9, align 8
  %14 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %15 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @skb_ensure_writable(%struct.sk_buff* %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

25:                                               ; preds = %4
  %26 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %27 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %35 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %39 = call i32 @sctp_csum_check(i64 %36, %struct.sk_buff* %37, %struct.ip_vs_protocol* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %94

42:                                               ; preds = %33
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.ip_vs_iphdr*, %struct.ip_vs_iphdr** %9, align 8
  %46 = call i32 @ip_vs_app_pkt_out(%struct.ip_vs_conn* %43, %struct.sk_buff* %44, %struct.ip_vs_iphdr* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %94

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i64 @skb_network_header(%struct.sk_buff* %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = bitcast i8* %61 to %struct.sctphdr*
  store %struct.sctphdr* %62, %struct.sctphdr** %10, align 8
  %63 = load %struct.sctphdr*, %struct.sctphdr** %10, align 8
  %64 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %67 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73, %70, %55
  %80 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %8, align 8
  %81 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sctphdr*, %struct.sctphdr** %10, align 8
  %84 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.sctphdr*, %struct.sctphdr** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @sctp_nat_csum(%struct.sk_buff* %85, %struct.sctphdr* %86, i32 %87)
  br label %93

89:                                               ; preds = %73
  %90 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %79
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %49, %41, %24
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sctp_csum_check(i64, %struct.sk_buff*, %struct.ip_vs_protocol*) #1

declare dso_local i32 @ip_vs_app_pkt_out(%struct.ip_vs_conn*, %struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @sctp_nat_csum(%struct.sk_buff*, %struct.sctphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
