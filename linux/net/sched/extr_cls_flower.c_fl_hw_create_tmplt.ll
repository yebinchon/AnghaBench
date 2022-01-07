; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_create_tmplt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_create_tmplt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.fl_flow_tmplt = type { i32, i32, i32 }
%struct.flow_cls_offload = type { i64, %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FLOW_CLS_TMPLT_CREATE = common dso_local global i32 0, align 4
@TC_SETUP_CLSFLOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_chain*, %struct.fl_flow_tmplt*)* @fl_hw_create_tmplt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_hw_create_tmplt(%struct.tcf_chain* %0, %struct.fl_flow_tmplt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_chain*, align 8
  %5 = alloca %struct.fl_flow_tmplt*, align 8
  %6 = alloca %struct.flow_cls_offload, align 8
  %7 = alloca %struct.tcf_block*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %4, align 8
  store %struct.fl_flow_tmplt* %1, %struct.fl_flow_tmplt** %5, align 8
  %8 = bitcast %struct.flow_cls_offload* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %9, i32 0, i32 1
  %11 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  store %struct.tcf_block* %11, %struct.tcf_block** %7, align 8
  %12 = call %struct.TYPE_7__* @flow_rule_alloc(i32 0)
  %13 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %13, align 8
  %14 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %22 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FLOW_CLS_TMPLT_CREATE, align 4
  %27 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %5, align 8
  %29 = ptrtoint %struct.fl_flow_tmplt* %28 to i64
  %30 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %5, align 8
  %32 = getelementptr inbounds %struct.fl_flow_tmplt, %struct.fl_flow_tmplt* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32* %32, i32** %36, align 8
  %37 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %5, align 8
  %38 = getelementptr inbounds %struct.fl_flow_tmplt, %struct.fl_flow_tmplt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* %38, i32** %42, align 8
  %43 = load %struct.fl_flow_tmplt*, %struct.fl_flow_tmplt** %5, align 8
  %44 = getelementptr inbounds %struct.fl_flow_tmplt, %struct.fl_flow_tmplt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32* %44, i32** %48, align 8
  %49 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %50 = load i32, i32* @TC_SETUP_CLSFLOWER, align 4
  %51 = call i32 @tc_setup_cb_call(%struct.tcf_block* %49, i32 %50, %struct.flow_cls_offload* %6, i32 0, i32 1)
  %52 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @kfree(%struct.TYPE_7__* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %20, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @flow_rule_alloc(i32) #2

declare dso_local i32 @tc_setup_cb_call(%struct.tcf_block*, i32, %struct.flow_cls_offload*, i32, i32) #2

declare dso_local i32 @kfree(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
