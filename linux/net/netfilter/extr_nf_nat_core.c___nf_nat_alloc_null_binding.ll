; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c___nf_nat_alloc_null_binding.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c___nf_nat_alloc_null_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %union.nf_inet_addr }
%union.nf_inet_addr = type { i32 }
%struct.TYPE_5__ = type { %union.nf_inet_addr }
%struct.nf_nat_range2 = type { %union.nf_inet_addr, %union.nf_inet_addr, i32 }

@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i32)* @__nf_nat_alloc_null_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nf_nat_alloc_null_binding(%struct.nf_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nf_inet_addr, align 4
  %6 = alloca %struct.nf_nat_range2, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %12 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = bitcast %union.nf_inet_addr* %5 to i8*
  %20 = bitcast %union.nf_inet_addr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %23 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = bitcast %union.nf_inet_addr* %5 to i8*
  %31 = bitcast %union.nf_inet_addr* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %21, %10
  %33 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %6, i32 0, i32 0
  %34 = bitcast %union.nf_inet_addr* %33 to i8*
  %35 = bitcast %union.nf_inet_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %6, i32 0, i32 1
  %37 = bitcast %union.nf_inet_addr* %36 to i8*
  %38 = bitcast %union.nf_inet_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %6, i32 0, i32 2
  %40 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @nf_nat_setup_info(%struct.nf_conn* %41, %struct.nf_nat_range2* %6, i32 %42)
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, %struct.nf_nat_range2*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
