; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_gc_worker_can_early_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_gc_worker_can_early_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conntrack_l4proto = type { i64 (%struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque

@IPS_ASSURED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*)* @gc_worker_can_early_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_worker_can_early_drop(%struct.nf_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conntrack_l4proto*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  %5 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %6, i32 0, i32 0
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %13 = call i32 @nf_ct_protonum(%struct.nf_conn* %12)
  %14 = call %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32 %13)
  store %struct.nf_conntrack_l4proto* %14, %struct.nf_conntrack_l4proto** %4, align 8
  %15 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %4, align 8
  %16 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %15, i32 0, i32 0
  %17 = load i64 (%struct.nf_conn.0*)*, i64 (%struct.nf_conn.0*)** %16, align 8
  %18 = icmp ne i64 (%struct.nf_conn.0*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %4, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %20, i32 0, i32 0
  %22 = load i64 (%struct.nf_conn.0*)*, i64 (%struct.nf_conn.0*)** %21, align 8
  %23 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %24 = bitcast %struct.nf_conn* %23 to %struct.nf_conn.0*
  %25 = call i64 %22(%struct.nf_conn.0* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %19, %11
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.nf_conntrack_l4proto* @nf_ct_l4proto_find(i32) #1

declare dso_local i32 @nf_ct_protonum(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
