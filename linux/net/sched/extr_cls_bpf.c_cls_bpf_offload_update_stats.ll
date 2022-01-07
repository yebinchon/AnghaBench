; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_offload_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_offload_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_bpf_prog = type { i32, i32, i32, i32, i32 }
%struct.tc_cls_bpf_offload = type { i32, i32, i32, i32*, i32, i32 }

@TC_CLSBPF_STATS = common dso_local global i32 0, align 4
@TC_SETUP_CLSBPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.cls_bpf_prog*)* @cls_bpf_offload_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_bpf_offload_update_stats(%struct.tcf_proto* %0, %struct.cls_bpf_prog* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.cls_bpf_prog*, align 8
  %5 = alloca %struct.tcf_block*, align 8
  %6 = alloca %struct.tc_cls_bpf_offload, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog** %4, align 8
  %7 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %8 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  store %struct.tcf_block* %11, %struct.tcf_block** %5, align 8
  %12 = bitcast %struct.tc_cls_bpf_offload* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %6, i32 0, i32 5
  %14 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %15 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %4, align 8
  %16 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tc_cls_common_offload_init(i32* %13, %struct.tcf_proto* %14, i32 %17, i32* null)
  %19 = load i32, i32* @TC_CLSBPF_STATS, align 4
  %20 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %4, align 8
  %22 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %6, i32 0, i32 3
  store i32* %22, i32** %23, align 8
  %24 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %4, align 8
  %25 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %4, align 8
  %29 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %4, align 8
  %33 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %37 = load i32, i32* @TC_SETUP_CLSBPF, align 4
  %38 = call i32 @tc_setup_cb_call(%struct.tcf_block* %36, i32 %37, %struct.tc_cls_bpf_offload* %6, i32 0, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, i32*) #2

declare dso_local i32 @tc_setup_cb_call(%struct.tcf_block*, i32, %struct.tc_cls_bpf_offload*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
