; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_tc_kern.c_handle_egress.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_tc_kern.c_handle_egress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.eth_hdr = type { i64 }
%struct.ipv6hdr = type { i64 }

@__const.handle_egress.dont_care_msg = private unnamed_addr constant [19 x i8] c"dont care %04x %d\0A\00", align 16
@__const.handle_egress.pass_msg = private unnamed_addr constant [6 x i8] c"pass\0A\00", align 1
@__const.handle_egress.reject_msg = private unnamed_addr constant [8 x i8] c"reject\0A\00", align 1
@TC_ACT_OK = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@test_cgrp2_array_pin = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_egress(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eth_hdr*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [19 x i8], align 16
  %9 = alloca [6 x i8], align 1
  %10 = alloca [8 x i8], align 1
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.eth_hdr*
  store %struct.eth_hdr* %16, %struct.eth_hdr** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr i8, i8* %17, i64 8
  %19 = bitcast i8* %18 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %19, %struct.ipv6hdr** %6, align 8
  %20 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %7, align 8
  %24 = bitcast [19 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.handle_egress.dont_care_msg, i32 0, i32 0), i64 19, i1 false)
  %25 = bitcast [6 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.handle_egress.pass_msg, i32 0, i32 0), i64 6, i1 false)
  %26 = bitcast [8 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.handle_egress.reject_msg, i32 0, i32 0), i64 8, i1 false)
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr i8, i8* %27, i64 8
  %29 = getelementptr i8, i8* %28, i64 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %1
  %35 = load %struct.eth_hdr*, %struct.eth_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_IPV6, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41, %34
  %48 = getelementptr inbounds [19 x i8], [19 x i8]* %8, i64 0, i64 0
  %49 = load %struct.eth_hdr*, %struct.eth_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i32, ...) @bpf_trace_printk(i8* %48, i32 19, i64 %51, i64 %54)
  %56 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %41
  %58 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %59 = call i32 @bpf_skb_under_cgroup(%struct.__sk_buff* %58, i32* @test_cgrp2_array_pin, i32 0)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %63 = call i32 (i8*, i32, ...) @bpf_trace_printk(i8* %62, i32 6)
  %64 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %57
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %67 = call i32 (i8*, i32, ...) @bpf_trace_printk(i8* %66, i32 8)
  %68 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %61, %47, %32
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @htons(i32) #2

declare dso_local i32 @bpf_trace_printk(i8*, i32, ...) #2

declare dso_local i32 @bpf_skb_under_cgroup(%struct.__sk_buff*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
