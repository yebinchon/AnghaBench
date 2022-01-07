; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_snmp_basic_main.c_snmp_translate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_snmp_basic_main.c_snmp_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }
%struct.udphdr = type { i32, i32 }
%struct.snmp_ctx = type { i64, i64, i8*, i32* }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@nf_nat_snmp_basic_decoder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"parser failed\0A\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i32, %struct.sk_buff*)* @snmp_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_translate(%struct.nf_conn* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.snmp_ctx, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %8, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %17 = bitcast %struct.iphdr* %16 to i32*
  %18 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = bitcast i32* %22 to %struct.udphdr*
  store %struct.udphdr* %23, %struct.udphdr** %9, align 8
  %24 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %25 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ntohs(i32 %26)
  %28 = sub i64 %27, 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %30 = bitcast %struct.udphdr* %29 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  store i8* %31, i8** %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %3
  %36 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %49 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  br label %91

63:                                               ; preds = %3
  %64 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %65 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %80 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %63, %35
  %92 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %98, i32* %4, align 4
  br label %119

99:                                               ; preds = %91
  %100 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %101 = bitcast %struct.udphdr* %100 to i8*
  %102 = getelementptr inbounds i8, i8* %101, i64 8
  %103 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 2
  store i8* %102, i8** %103, align 8
  %104 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %105 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.snmp_ctx, %struct.snmp_ctx* %12, i32 0, i32 3
  store i32* %105, i32** %106, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @asn1_ber_decoder(i32* @nf_nat_snmp_basic_decoder, %struct.snmp_ctx* %12, i8* %107, i64 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %115 = call i32 @nf_ct_helper_log(%struct.sk_buff* %113, %struct.nf_conn* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* @NF_DROP, align 4
  store i32 %116, i32* %4, align 4
  br label %119

117:                                              ; preds = %99
  %118 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %112, %97
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @asn1_ber_decoder(i32*, %struct.snmp_ctx*, i8*, i64) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
