; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c___ovs_ct_update_key_orig_tp.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c___ovs_ct_update_key_orig_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.nf_conntrack_tuple = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw_flow_key*, %struct.nf_conntrack_tuple*, i64)* @__ovs_ct_update_key_orig_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ovs_ct_update_key_orig_tp(%struct.sw_flow_key* %0, %struct.nf_conntrack_tuple* %1, i64 %2) #0 {
  %4 = alloca %struct.sw_flow_key*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca i64, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %8 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %12 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %3
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %28 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i8* %26, i8** %30, align 8
  %31 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @htons(i32 %36)
  %38 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %39 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  br label %61

42:                                               ; preds = %3
  %43 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %44 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %49 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  %52 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.sw_flow_key*, %struct.sw_flow_key** %4, align 8
  %58 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  br label %61

61:                                               ; preds = %42, %19
  ret void
}

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
