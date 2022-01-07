; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_out_icmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_out_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i64, i32, i32, i32, i32 }
%struct.icmphdr = type { i32, i64, i32, i32, i32, i32 }
%struct.ip_vs_iphdr = type { i32 }
%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_protocol = type { i32, i64 }
%union.nf_inet_addr = type { i32 }

@NF_STOLEN = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Outgoing ICMP (%d,%d) %pI4->%pI4\0A\00", align 1
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_SOURCE_QUENCH = common dso_local global i64 0, align 8
@ICMP_TIME_EXCEEDED = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Checking outgoing ICMP for\00", align 1
@ip_vs_conn_out_get_proto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.sk_buff*, i32*, i32)* @ip_vs_out_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_out_icmp(%struct.netns_ipvs* %0, %struct.sk_buff* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.icmphdr, align 8
  %12 = alloca %struct.icmphdr*, align 8
  %13 = alloca %struct.iphdr, align 8
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.ip_vs_iphdr, align 4
  %16 = alloca %struct.ip_vs_conn*, align 8
  %17 = alloca %struct.ip_vs_protocol*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.nf_inet_addr, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 1, i32* %21, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %22)
  %24 = call i64 @ip_is_fragment(%struct.iphdr* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ip_vs_defrag_user(i32 %29)
  %31 = call i64 @ip_vs_gather_frags(%struct.netns_ipvs* %27, %struct.sk_buff* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @NF_STOLEN, align 4
  store i32 %34, i32* %5, align 4
  br label %165

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %37)
  store %struct.iphdr* %38, %struct.iphdr** %10, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4
  store i32 %42, i32* %19, align 4
  store i32 %42, i32* %18, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* %18, align 4
  %45 = bitcast %struct.icmphdr* %11 to %struct.iphdr*
  %46 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %43, i32 %44, i32 32, %struct.iphdr* %45)
  %47 = bitcast %struct.iphdr* %46 to %struct.icmphdr*
  store %struct.icmphdr* %47, %struct.icmphdr** %12, align 8
  %48 = load %struct.icmphdr*, %struct.icmphdr** %12, align 8
  %49 = icmp eq %struct.icmphdr* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* @NF_DROP, align 4
  store i32 %51, i32* %5, align 4
  br label %165

52:                                               ; preds = %36
  %53 = load %struct.icmphdr*, %struct.icmphdr** %12, align 8
  %54 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.icmphdr*, %struct.icmphdr** %12, align 8
  %57 = bitcast %struct.icmphdr* %56 to %struct.iphdr*
  %58 = call i32 @icmp_id(%struct.iphdr* %57)
  %59 = call i32 @ntohs(i32 %58)
  %60 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 4
  %62 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 5
  %64 = call i32 @IP_VS_DBG(i32 12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %59, i32* %61, i32* %63)
  %65 = load %struct.icmphdr*, %struct.icmphdr** %12, align 8
  %66 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %52
  %71 = load %struct.icmphdr*, %struct.icmphdr** %12, align 8
  %72 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ICMP_SOURCE_QUENCH, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.icmphdr*, %struct.icmphdr** %12, align 8
  %78 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ICMP_TIME_EXCEEDED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32*, i32** %8, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %84, i32* %5, align 4
  br label %165

85:                                               ; preds = %76, %70, %52
  %86 = load i32, i32* %18, align 4
  %87 = zext i32 %86 to i64
  %88 = add i64 %87, 32
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %90, i32 %91, i32 32, %struct.iphdr* %13)
  store %struct.iphdr* %92, %struct.iphdr** %14, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %94 = icmp eq %struct.iphdr* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %96, i32* %5, align 4
  br label %165

97:                                               ; preds = %85
  %98 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %100)
  store %struct.ip_vs_protocol* %101, %struct.ip_vs_protocol** %17, align 8
  %102 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %17, align 8
  %103 = icmp ne %struct.ip_vs_protocol* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %105, i32* %5, align 4
  br label %165

106:                                              ; preds = %97
  %107 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IP_OFFSET, align 4
  %111 = call i32 @htons(i32 %110)
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %17, align 8
  %116 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %114, %106
  %120 = phi i1 [ false, %106 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %125, i32* %5, align 4
  br label %165

126:                                              ; preds = %119
  %127 = load i32, i32* @AF_INET, align 4
  %128 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %17, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @IP_VS_DBG_PKT(i32 11, i32 %127, %struct.ip_vs_protocol* %128, %struct.sk_buff* %129, i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @AF_INET, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @ip_vs_fill_iph_skb_icmp(i32 %132, %struct.sk_buff* %133, i32 %134, i32 1, %struct.ip_vs_iphdr* %15)
  %136 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %17, align 8
  %137 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ip_vs_conn_out_get_proto, align 4
  %140 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %141 = load i32, i32* @AF_INET, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = call %struct.ip_vs_conn* @INDIRECT_CALL_1(i32 %138, i32 %139, %struct.netns_ipvs* %140, i32 %141, %struct.sk_buff* %142, %struct.ip_vs_iphdr* %15)
  store %struct.ip_vs_conn* %143, %struct.ip_vs_conn** %16, align 8
  %144 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %16, align 8
  %145 = icmp ne %struct.ip_vs_conn* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %126
  %147 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %147, i32* %5, align 4
  br label %165

148:                                              ; preds = %126
  %149 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %150 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = bitcast %union.nf_inet_addr* %20 to i32*
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @AF_INET, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %156 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %16, align 8
  %159 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %17, align 8
  %160 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %15, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @handle_response_icmp(i32 %153, %struct.sk_buff* %154, %union.nf_inet_addr* %20, i32 %157, %struct.ip_vs_conn* %158, %struct.ip_vs_protocol* %159, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %148, %146, %124, %104, %95, %82, %50, %33
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i64 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_vs_gather_frags(%struct.netns_ipvs*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ip_vs_defrag_user(i32) #1

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i64, i32, i32*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @icmp_id(%struct.iphdr*) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @IP_VS_DBG_PKT(i32, i32, %struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @ip_vs_fill_iph_skb_icmp(i32, %struct.sk_buff*, i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local %struct.ip_vs_conn* @INDIRECT_CALL_1(i32, i32, %struct.netns_ipvs*, i32, %struct.sk_buff*, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @handle_response_icmp(i32, %struct.sk_buff*, %union.nf_inet_addr*, i32, %struct.ip_vs_conn*, %struct.ip_vs_protocol*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
