; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_stats_hw_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_stats_hw_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_mall_head = type { i32, i32 }
%struct.tc_cls_matchall_offload = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TC_CLSMATCHALL_STATS = common dso_local global i32 0, align 4
@TC_SETUP_CLSMATCHALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.cls_mall_head*, i64)* @mall_stats_hw_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mall_stats_hw_filter(%struct.tcf_proto* %0, %struct.cls_mall_head* %1, i64 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.cls_mall_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tc_cls_matchall_offload, align 8
  %8 = alloca %struct.tcf_block*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.cls_mall_head* %1, %struct.cls_mall_head** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = bitcast %struct.tc_cls_matchall_offload* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.tcf_block*, %struct.tcf_block** %13, align 8
  store %struct.tcf_block* %14, %struct.tcf_block** %8, align 8
  %15 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 3
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %17 = load %struct.cls_mall_head*, %struct.cls_mall_head** %5, align 8
  %18 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tc_cls_common_offload_init(i32* %15, %struct.tcf_proto* %16, i32 %19, i32* null)
  %21 = load i32, i32* @TC_CLSMATCHALL_STATS, align 4
  %22 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.tcf_block*, %struct.tcf_block** %8, align 8
  %26 = load i32, i32* @TC_SETUP_CLSMATCHALL, align 4
  %27 = call i32 @tc_setup_cb_call(%struct.tcf_block* %25, i32 %26, %struct.tc_cls_matchall_offload* %7, i32 0, i32 1)
  %28 = load %struct.cls_mall_head*, %struct.cls_mall_head** %5, align 8
  %29 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @tcf_exts_stats_update(i32* %29, i32 %32, i32 %35, i32 %38)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, i32*) #2

declare dso_local i32 @tc_setup_cb_call(%struct.tcf_block*, i32, %struct.tc_cls_matchall_offload*, i32, i32) #2

declare dso_local i32 @tcf_exts_stats_update(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
