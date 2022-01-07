; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_replace_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_hw_replace_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.cls_fl_filter = type { i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_cls_offload = type { i64, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@FLOW_CLS_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to setup flow action\00", align 1
@TC_SETUP_CLSFLOWER = common dso_local global i32 0, align 4
@TCA_CLS_FLAGS_IN_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.cls_fl_filter*, i32, %struct.netlink_ext_ack*)* @fl_hw_replace_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_hw_replace_filter(%struct.tcf_proto* %0, %struct.cls_fl_filter* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.cls_fl_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.tcf_block*, align 8
  %11 = alloca %struct.flow_cls_offload, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store %struct.cls_fl_filter* %1, %struct.cls_fl_filter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %15 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  store %struct.tcf_block* %18, %struct.tcf_block** %10, align 8
  %19 = bitcast %struct.flow_cls_offload* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %21 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @tc_skip_sw(i32 %22)
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %25 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %24, i32 0, i32 2
  %26 = call i32 @tcf_exts_num_actions(i32* %25)
  %27 = call %struct.TYPE_11__* @flow_rule_alloc(i32 %26)
  %28 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %28, align 8
  %29 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %135

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 4
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %38 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %39 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %42 = call i32 @tc_cls_common_offload_init(i32* %36, %struct.tcf_proto* %37, i32 %40, %struct.netlink_ext_ack* %41)
  %43 = load i32, i32* @FLOW_CLS_REPLACE, align 4
  %44 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %46 = ptrtoint %struct.cls_fl_filter* %45 to i64
  %47 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %49 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %48, i32 0, i32 5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32* %51, i32** %55, align 8
  %56 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %57 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %56, i32 0, i32 5
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32* %59, i32** %63, align 8
  %64 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %65 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32* %65, i32** %69, align 8
  %70 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %71 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %79 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %78, i32 0, i32 2
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @tc_setup_flow_action(i32* %77, i32* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %35
  %85 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = call i32 @kfree(%struct.TYPE_11__* %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %92 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %135

94:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %135

95:                                               ; preds = %35
  %96 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %97 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %98 = load i32, i32* @TC_SETUP_CLSFLOWER, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %101 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %100, i32 0, i32 0
  %102 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %103 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %102, i32 0, i32 1
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @tc_setup_cb_add(%struct.tcf_block* %96, %struct.tcf_proto* %97, i32 %98, %struct.flow_cls_offload* %11, i32 %99, i32* %101, i32* %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = call i32 @tc_cleanup_flow_action(i32* %108)
  %110 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = call i32 @kfree(%struct.TYPE_11__* %111)
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %95
  %116 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %117 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @fl_hw_destroy_filter(%struct.tcf_proto* %116, %struct.cls_fl_filter* %117, i32 %118, i32* null)
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %5, align 4
  br label %135

121:                                              ; preds = %95
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %126 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TCA_CLS_FLAGS_IN_HW, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %135

134:                                              ; preds = %124, %121
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %131, %115, %94, %90, %32
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_skip_sw(i32) #2

declare dso_local %struct.TYPE_11__* @flow_rule_alloc(i32) #2

declare dso_local i32 @tcf_exts_num_actions(i32*) #2

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_flow_action(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.TYPE_11__*) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @tc_setup_cb_add(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.flow_cls_offload*, i32, i32*, i32*, i32) #2

declare dso_local i32 @tc_cleanup_flow_action(i32*) #2

declare dso_local i32 @fl_hw_destroy_filter(%struct.tcf_proto*, %struct.cls_fl_filter*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
