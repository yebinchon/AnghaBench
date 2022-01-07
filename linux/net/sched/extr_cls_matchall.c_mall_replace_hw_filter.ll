; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_replace_hw_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_replace_hw_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_mall_head = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_cls_matchall_offload = type { i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TC_CLSMATCHALL_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to setup flow action\00", align 1
@TC_SETUP_CLSMATCHALL = common dso_local global i32 0, align 4
@TCA_CLS_FLAGS_IN_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.cls_mall_head*, i64, %struct.netlink_ext_ack*)* @mall_replace_hw_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mall_replace_hw_filter(%struct.tcf_proto* %0, %struct.cls_mall_head* %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.cls_mall_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.tc_cls_matchall_offload, align 8
  %11 = alloca %struct.tcf_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store %struct.cls_mall_head* %1, %struct.cls_mall_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = bitcast %struct.tc_cls_matchall_offload* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %16 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.tcf_block*, %struct.tcf_block** %18, align 8
  store %struct.tcf_block* %19, %struct.tcf_block** %11, align 8
  %20 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %21 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tc_skip_sw(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %25 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %24, i32 0, i32 2
  %26 = call i32 @tcf_exts_num_actions(i32* %25)
  %27 = call %struct.TYPE_5__* @flow_rule_alloc(i32 %26)
  %28 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %28, align 8
  %29 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %110

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 3
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %38 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %39 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %42 = call i32 @tc_cls_common_offload_init(i32* %36, %struct.tcf_proto* %37, i32 %40, %struct.netlink_ext_ack* %41)
  %43 = load i32, i32* @TC_CLSMATCHALL_REPLACE, align 4
  %44 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %51 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %50, i32 0, i32 2
  %52 = call i32 @tc_setup_flow_action(i32* %49, i32* %51, i32 1)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @kfree(%struct.TYPE_5__* %57)
  %59 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %60 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @mall_destroy_hw_filter(%struct.tcf_proto* %59, %struct.cls_mall_head* %60, i64 %61, i32* null)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %67 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %69

68:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %110

71:                                               ; preds = %35
  %72 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %73 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %74 = load i32, i32* @TC_SETUP_CLSMATCHALL, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %77 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %76, i32 0, i32 0
  %78 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %79 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %78, i32 0, i32 1
  %80 = call i32 @tc_setup_cb_add(%struct.tcf_block* %72, %struct.tcf_proto* %73, i32 %74, %struct.tc_cls_matchall_offload* %10, i32 %75, i32* %77, i32* %79, i32 1)
  store i32 %80, i32* %13, align 4
  %81 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = call i32 @tc_cleanup_flow_action(i32* %83)
  %85 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %10, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @kfree(%struct.TYPE_5__* %86)
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %71
  %91 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %92 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @mall_destroy_hw_filter(%struct.tcf_proto* %91, %struct.cls_mall_head* %92, i64 %93, i32* null)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %110

96:                                               ; preds = %71
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %101 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TCA_CLS_FLAGS_IN_HW, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %110

109:                                              ; preds = %99, %96
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %106, %90, %69, %32
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_skip_sw(i32) #2

declare dso_local %struct.TYPE_5__* @flow_rule_alloc(i32) #2

declare dso_local i32 @tcf_exts_num_actions(i32*) #2

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_flow_action(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.TYPE_5__*) #2

declare dso_local i32 @mall_destroy_hw_filter(%struct.tcf_proto*, %struct.cls_mall_head*, i64, i32*) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @tc_setup_cb_add(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.tc_cls_matchall_offload*, i32, i32*, i32*, i32) #2

declare dso_local i32 @tc_cleanup_flow_action(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
