; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_clear_hw_hnode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_clear_hw_hnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.tc_u_hnode = type { i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TC_CLSU32_DELETE_HNODE = common dso_local global i32 0, align 4
@TC_SETUP_CLSU32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tc_u_hnode*, %struct.netlink_ext_ack*)* @u32_clear_hw_hnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_clear_hw_hnode(%struct.tcf_proto* %0, %struct.tc_u_hnode* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tc_u_hnode*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.tcf_block*, align 8
  %8 = alloca %struct.tc_cls_u32_offload, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tc_u_hnode* %1, %struct.tc_u_hnode** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  store %struct.tcf_block* %13, %struct.tcf_block** %7, align 8
  %14 = bitcast %struct.tc_cls_u32_offload* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %8, i32 0, i32 2
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %17 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %18 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %21 = call i32 @tc_cls_common_offload_init(i32* %15, %struct.tcf_proto* %16, i32 %19, %struct.netlink_ext_ack* %20)
  %22 = load i32, i32* @TC_CLSU32_DELETE_HNODE, align 4
  %23 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %8, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %25 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %30 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %35 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %40 = load i32, i32* @TC_SETUP_CLSU32, align 4
  %41 = call i32 @tc_setup_cb_call(%struct.tcf_block* %39, i32 %40, %struct.tc_cls_u32_offload* %8, i32 0, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_cb_call(%struct.tcf_block*, i32, %struct.tc_cls_u32_offload*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
