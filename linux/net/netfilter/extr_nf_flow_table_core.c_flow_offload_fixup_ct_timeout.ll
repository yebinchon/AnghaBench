; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_fixup_ct_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_flow_offload_fixup_ct_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64 }
%struct.nf_conntrack_l4proto = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@NF_FLOWTABLE_TCP_PICKUP_TIMEOUT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@NF_FLOWTABLE_UDP_PICKUP_TIMEOUT = common dso_local global i32 0, align 4
@nfct_time_stamp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @flow_offload_fixup_ct_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_offload_fixup_ct_timeout(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.nf_conntrack_l4proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = call i32 @nf_ct_protonum(%struct.nf_conn* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %8)
  store %struct.nf_conntrack_l4proto* %9, %struct.nf_conntrack_l4proto** %3, align 8
  %10 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %3, align 8
  %11 = icmp ne %struct.nf_conntrack_l4proto* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IPPROTO_TCP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @NF_FLOWTABLE_TCP_PICKUP_TIMEOUT, align 4
  store i32 %18, i32* %5, align 4
  br label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IPPROTO_UDP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @NF_FLOWTABLE_UDP_PICKUP_TIMEOUT, align 4
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %17
  %28 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %29 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @nf_flow_timeout_delta(i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i64, i64* @nfct_time_stamp, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %41 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %12, %25, %35, %27
  ret void
}

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #1

declare dso_local i64 @nf_flow_timeout_delta(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
