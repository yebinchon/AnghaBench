; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"truncated packet\00", align 1
@NF_INET_PRE_ROUTING = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"bad checksum\00", align 1
@TCPHDR_ECE = common dso_local global i64 0, align 8
@TCPHDR_CWR = common dso_local global i64 0, align 8
@TCPHDR_PSH = common dso_local global i64 0, align 8
@tcp_valid_flags = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid tcp flag combination\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, %struct.sk_buff*, i32, %struct.nf_hook_state*)* @tcp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_error(%struct.tcphdr* %0, %struct.sk_buff* %1, i32 %2, %struct.nf_hook_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_hook_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.tcphdr* %0, %struct.tcphdr** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_hook_state* %3, %struct.nf_hook_state** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %18 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23, %4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %33 = call i32 @tcp_error_log(%struct.sk_buff* %31, %struct.nf_hook_state* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %84

34:                                               ; preds = %23
  %35 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %36 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %44 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NF_INET_PRE_ROUTING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %51 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IPPROTO_TCP, align 4
  %55 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %56 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @nf_checksum(%struct.sk_buff* %49, i64 %52, i32 %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %63 = call i32 @tcp_error_log(%struct.sk_buff* %61, %struct.nf_hook_state* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %84

64:                                               ; preds = %48, %42, %34
  %65 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %66 = call i64 @tcp_flag_byte(%struct.tcphdr* %65)
  %67 = load i64, i64* @TCPHDR_ECE, align 8
  %68 = load i64, i64* @TCPHDR_CWR, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* @TCPHDR_PSH, align 8
  %71 = or i64 %69, %70
  %72 = xor i64 %71, -1
  %73 = and i64 %66, %72
  store i64 %73, i64* %11, align 8
  %74 = load i32*, i32** @tcp_valid_flags, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load %struct.nf_hook_state*, %struct.nf_hook_state** %9, align 8
  %82 = call i32 @tcp_error_log(%struct.sk_buff* %80, %struct.nf_hook_state* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %79, %60, %30
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @tcp_error_log(%struct.sk_buff*, %struct.nf_hook_state*, i8*) #1

declare dso_local i64 @nf_checksum(%struct.sk_buff*, i64, i32, i32, i32) #1

declare dso_local i64 @tcp_flag_byte(%struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
