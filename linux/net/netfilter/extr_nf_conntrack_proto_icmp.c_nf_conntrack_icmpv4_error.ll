; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_nf_conntrack_icmpv4_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_nf_conntrack_icmpv4_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%union.nf_inet_addr = type { i32 }
%struct.icmphdr = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"short packet\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bad hw icmp checksum\00", align 1
@NR_ICMP_TYPES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid icmp type\00", align 1
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_SOURCE_QUENCH = common dso_local global i64 0, align 8
@ICMP_TIME_EXCEEDED = common dso_local global i64 0, align 8
@ICMP_PARAMETERPROB = common dso_local global i64 0, align 8
@ICMP_REDIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_icmpv4_error(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, %struct.nf_hook_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_hook_state*, align 8
  %10 = alloca %union.nf_inet_addr, align 4
  %11 = alloca %struct.icmphdr*, align 8
  %12 = alloca %struct.icmphdr, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_hook_state* %3, %struct.nf_hook_state** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.icmphdr* @skb_header_pointer(%struct.sk_buff* %13, i32 %14, i32 8, %struct.icmphdr* %12)
  store %struct.icmphdr* %15, %struct.icmphdr** %11, align 8
  %16 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %17 = icmp eq %struct.icmphdr* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %21 = call i32 @icmp_error_log(%struct.sk_buff* %19, %struct.nf_hook_state* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NF_ACCEPT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %26 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %34 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NF_INET_PRE_ROUTING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %41 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IPPROTO_ICMP, align 4
  %45 = call i64 @nf_ip_checksum(%struct.sk_buff* %39, i64 %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %50 = call i32 @icmp_error_log(%struct.sk_buff* %48, %struct.nf_hook_state* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @NF_ACCEPT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %114

53:                                               ; preds = %38, %32, %24
  %54 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %55 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NR_ICMP_TYPES, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %62 = call i32 @icmp_error_log(%struct.sk_buff* %60, %struct.nf_hook_state* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @NF_ACCEPT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %114

65:                                               ; preds = %53
  %66 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %67 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %73 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ICMP_SOURCE_QUENCH, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %79 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ICMP_TIME_EXCEEDED, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %85 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ICMP_PARAMETERPROB, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.icmphdr*, %struct.icmphdr** %11, align 8
  %91 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ICMP_REDIRECT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %96, i32* %5, align 4
  br label %114

97:                                               ; preds = %89, %83, %77, %71, %65
  %98 = call i32 @memset(%union.nf_inet_addr* %10, i32 0, i32 4)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = bitcast %union.nf_inet_addr* %10 to i32*
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = add i64 %105, 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %112 = load i32, i32* @IPPROTO_ICMP, align 4
  %113 = call i32 @nf_conntrack_inet_error(%struct.nf_conn* %108, %struct.sk_buff* %109, i32 %110, %struct.nf_hook_state* %111, i32 %112, %union.nf_inet_addr* %10)
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %97, %95, %59, %47, %18
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.icmphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmphdr*) #1

declare dso_local i32 @icmp_error_log(%struct.sk_buff*, %struct.nf_hook_state*, i8*) #1

declare dso_local i64 @nf_ip_checksum(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @memset(%union.nf_inet_addr*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_conntrack_inet_error(%struct.nf_conn*, %struct.sk_buff*, i32, %struct.nf_hook_state*, i32, %union.nf_inet_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
