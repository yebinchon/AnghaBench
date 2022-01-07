; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_destroy_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_destroy_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_fl_filter = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_cls_offload = type { i64, i32, i32 }

@FLOW_CLS_DESTROY = common dso_local global i32 0, align 4
@TC_SETUP_CLSFLOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.cls_fl_filter*, i32, %struct.netlink_ext_ack*)* @fl_hw_destroy_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_hw_destroy_filter(%struct.tcf_proto* %0, %struct.cls_fl_filter* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.tcf_proto*, align 8
  %6 = alloca %struct.cls_fl_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.tcf_block*, align 8
  %10 = alloca %struct.flow_cls_offload, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %5, align 8
  store %struct.cls_fl_filter* %1, %struct.cls_fl_filter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %12 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  store %struct.tcf_block* %15, %struct.tcf_block** %9, align 8
  %16 = bitcast %struct.flow_cls_offload* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 2
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %19 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %6, align 8
  %20 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %23 = call i32 @tc_cls_common_offload_init(i32* %17, %struct.tcf_proto* %18, i32 %21, %struct.netlink_ext_ack* %22)
  %24 = load i32, i32* @FLOW_CLS_DESTROY, align 4
  %25 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %6, align 8
  %27 = ptrtoint %struct.cls_fl_filter* %26 to i64
  %28 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  %30 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %31 = load i32, i32* @TC_SETUP_CLSFLOWER, align 4
  %32 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %6, align 8
  %33 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %32, i32 0, i32 1
  %34 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %6, align 8
  %35 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @tc_setup_cb_destroy(%struct.tcf_block* %29, %struct.tcf_proto* %30, i32 %31, %struct.flow_cls_offload* %10, i32 0, i32* %33, i32* %35, i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_cb_destroy(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.flow_cls_offload*, i32, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
