; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_nat_h323.c_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { i32 }
%struct.anon = type { i32, i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"nf_nat_h323: nf_nat_mangle_tcp_packet error\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"nf_nat_h323: nf_nat_mangle_udp_packet error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8**, i32, i32, i32, i32)* @set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_addr(%struct.sk_buff* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_conn*, align 8
  %18 = alloca %struct.anon, align 1
  %19 = alloca %struct.tcphdr*, align 8
  %20 = alloca %struct.tcphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %21, i32* %16)
  store %struct.nf_conn* %22, %struct.nf_conn** %17, align 8
  %23 = load i32, i32* %14, align 4
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  store i32 %23, i32* %24, align 1
  %25 = load i32, i32* %15, align 4
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  store i32 %25, i32* %26, align 1
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add i32 %28, %27
  store i32 %29, i32* %13, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPPROTO_TCP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %7
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = bitcast %struct.anon* %18 to i8*
  %43 = call i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff* %37, %struct.nf_conn* %38, i32 %39, i32 %40, i32 %41, i32 8, i8* %42, i32 8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %95

47:                                               ; preds = %36
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @ip_hdrlen(%struct.sk_buff* %49)
  %51 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %48, i32 %50, i32 4, %struct.tcphdr* %20)
  store %struct.tcphdr* %51, %struct.tcphdr** %19, align 8
  %52 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %53 = icmp eq %struct.tcphdr* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %8, align 4
  br label %95

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @ip_hdrlen(%struct.sk_buff* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load %struct.tcphdr*, %struct.tcphdr** %19, align 8
  %64 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8**, i8*** %11, align 8
  store i8* %71, i8** %72, align 8
  br label %94

73:                                               ; preds = %7
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = bitcast %struct.anon* %18 to i8*
  %80 = call i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %74, %struct.nf_conn* %75, i32 %76, i32 %77, i32 %78, i32 8, i8* %79, i32 8)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %95

84:                                               ; preds = %73
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = call i32 @ip_hdrlen(%struct.sk_buff* %88)
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %84, %55
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %82, %54, %45
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @net_notice_ratelimited(i8*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
