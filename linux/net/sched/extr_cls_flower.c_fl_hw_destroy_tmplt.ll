; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_destroy_tmplt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_destroy_tmplt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.fl_flow_tmplt = type { i32 }
%struct.flow_cls_offload = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FLOW_CLS_TMPLT_DESTROY = common dso_local global i32 0, align 4
@TC_SETUP_CLSFLOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_chain*, %struct.fl_flow_tmplt*)* @fl_hw_destroy_tmplt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_hw_destroy_tmplt(%struct.tcf_chain* %0, %struct.fl_flow_tmplt* %1) #0 {
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca %struct.fl_flow_tmplt*, align 8
  %5 = alloca %struct.flow_cls_offload, align 8
  %6 = alloca %struct.tcf_block*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %3, align 8
  store %struct.fl_flow_tmplt* %1, %struct.fl_flow_tmplt** %4, align 8
  %7 = bitcast %struct.flow_cls_offload* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %9 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %8, i32 0, i32 1
  %10 = load %struct.tcf_block*, %struct.tcf_block** %9, align 8
  store %struct.tcf_block* %10, %struct.tcf_block** %6, align 8
  %11 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %12 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @FLOW_CLS_TMPLT_DESTROY, align 4
  %17 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %4, align 8
  %19 = ptrtoint %struct.fl_flow_tmplt* %18 to i64
  %20 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %5, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %22 = load i32, i32* @TC_SETUP_CLSFLOWER, align 4
  %23 = call i32 @tc_setup_cb_call(%struct.tcf_block* %21, i32 %22, %struct.flow_cls_offload* %5, i32 0, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_setup_cb_call(%struct.tcf_block*, i32, %struct.flow_cls_offload*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
