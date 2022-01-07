; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_nat_icmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_nat_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_protocol = type { i32 }
%struct.ip_vs_conn = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iphdr = type { i32, i64, i32, i32 }
%struct.icmphdr = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Forwarding altered outgoing ICMP\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Forwarding altered incoming ICMP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_nat_icmp(%struct.sk_buff* %0, %struct.ip_vs_protocol* %1, %struct.ip_vs_conn* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_protocol*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.icmphdr*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %6, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i64 @skb_network_header(%struct.sk_buff* %20)
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = inttoptr i64 %24 to %struct.icmphdr*
  store %struct.icmphdr* %25, %struct.icmphdr** %11, align 8
  %26 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %27 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %26, i64 1
  %28 = bitcast %struct.icmphdr* %27 to %struct.iphdr*
  store %struct.iphdr* %28, %struct.iphdr** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %4
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %39 = call i32 @ip_send_check(%struct.iphdr* %38)
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %41 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %47 = call i32 @ip_send_check(%struct.iphdr* %46)
  br label %65

48:                                               ; preds = %4
  %49 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %50 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %56 = call i32 @ip_send_check(%struct.iphdr* %55)
  %57 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %58 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %62 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %64 = call i32 @ip_send_check(%struct.iphdr* %63)
  br label %65

65:                                               ; preds = %48, %31
  %66 = load i64, i64* @IPPROTO_TCP, align 8
  %67 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* @IPPROTO_UDP, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* @IPPROTO_SCTP, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %77, %71, %65
  %84 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %85 = bitcast %struct.iphdr* %84 to i8*
  %86 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %85, i64 %90
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %13, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %97 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  br label %107

101:                                              ; preds = %83
  %102 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %103 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107, %77
  %109 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %110 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @ip_vs_checksum_complete(%struct.sk_buff* %111, i32 %112)
  %114 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %115 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %108
  %122 = load i32, i32* @AF_INET, align 4
  %123 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %126 = bitcast %struct.iphdr* %125 to i8*
  %127 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %128 = bitcast %struct.iphdr* %127 to i8*
  %129 = ptrtoint i8* %126 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @IP_VS_DBG_PKT(i32 11, i32 %122, %struct.ip_vs_protocol* %123, %struct.sk_buff* %124, i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %147

134:                                              ; preds = %108
  %135 = load i32, i32* @AF_INET, align 4
  %136 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %139 = bitcast %struct.iphdr* %138 to i8*
  %140 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %141 = bitcast %struct.iphdr* %140 to i8*
  %142 = ptrtoint i8* %139 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @IP_VS_DBG_PKT(i32 11, i32 %135, %struct.ip_vs_protocol* %136, %struct.sk_buff* %137, i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %134, %121
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i64 @ip_vs_checksum_complete(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
