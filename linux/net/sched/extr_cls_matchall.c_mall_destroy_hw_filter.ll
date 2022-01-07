; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_destroy_hw_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_destroy_hw_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_mall_head = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_cls_matchall_offload = type { i64, i32, i32 }

@TC_CLSMATCHALL_DESTROY = common dso_local global i32 0, align 4
@TC_SETUP_CLSMATCHALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.cls_mall_head*, i64, %struct.netlink_ext_ack*)* @mall_destroy_hw_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mall_destroy_hw_filter(%struct.tcf_proto* %0, %struct.cls_mall_head* %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.tcf_proto*, align 8
  %6 = alloca %struct.cls_mall_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.tc_cls_matchall_offload, align 8
  %10 = alloca %struct.tcf_block*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %5, align 8
  store %struct.cls_mall_head* %1, %struct.cls_mall_head** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %11 = bitcast %struct.tc_cls_matchall_offload* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.tcf_block*, %struct.tcf_block** %15, align 8
  store %struct.tcf_block* %16, %struct.tcf_block** %10, align 8
  %17 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %9, i32 0, i32 2
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %19 = load %struct.cls_mall_head*, %struct.cls_mall_head** %6, align 8
  %20 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %23 = call i32 @tc_cls_common_offload_init(i32* %17, %struct.tcf_proto* %18, i32 %21, %struct.netlink_ext_ack* %22)
  %24 = load i32, i32* @TC_CLSMATCHALL_DESTROY, align 4
  %25 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %9, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %29 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %30 = load i32, i32* @TC_SETUP_CLSMATCHALL, align 4
  %31 = load %struct.cls_mall_head*, %struct.cls_mall_head** %6, align 8
  %32 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %31, i32 0, i32 1
  %33 = load %struct.cls_mall_head*, %struct.cls_mall_head** %6, align 8
  %34 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %33, i32 0, i32 0
  %35 = call i32 @tc_setup_cb_destroy(%struct.tcf_block* %28, %struct.tcf_proto* %29, i32 %30, %struct.tc_cls_matchall_offload* %9, i32 0, i32* %32, i32* %34, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_cb_destroy(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.tc_cls_matchall_offload*, i32, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
