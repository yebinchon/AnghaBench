; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_reoffload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_reoffload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_cls_offload = type { i64, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, i32* }
%struct.cls_fl_filter = type { i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FLOW_CLS_REPLACE = common dso_local global i32 0, align 4
@FLOW_CLS_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to setup flow action\00", align 1
@TC_SETUP_CLSFLOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i32, i32*, i8*, %struct.netlink_ext_ack*)* @fl_reoffload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_reoffload(%struct.tcf_proto* %0, i32 %1, i32* %2, i8* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.tcf_block*, align 8
  %13 = alloca %struct.flow_cls_offload, align 8
  %14 = alloca %struct.cls_fl_filter*, align 8
  %15 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.tcf_block*, %struct.tcf_block** %19, align 8
  store %struct.tcf_block* %20, %struct.tcf_block** %12, align 8
  %21 = bitcast %struct.flow_cls_offload* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  store %struct.cls_fl_filter* null, %struct.cls_fl_filter** %14, align 8
  %22 = call i32 (...) @ASSERT_RTNL()
  br label %23

23:                                               ; preds = %140, %5
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %25 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.cls_fl_filter* @fl_get_next_hw_filter(%struct.tcf_proto* %24, %struct.cls_fl_filter* %25, i32 %26)
  store %struct.cls_fl_filter* %27, %struct.cls_fl_filter** %14, align 8
  %28 = icmp ne %struct.cls_fl_filter* %27, null
  br i1 %28, label %29, label %143

29:                                               ; preds = %23
  %30 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %31 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %30, i32 0, i32 3
  %32 = call i32 @tcf_exts_num_actions(i32* %31)
  %33 = call %struct.TYPE_11__* @flow_rule_alloc(i32 %32)
  %34 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %34, align 8
  %35 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %40 = call i32 @__fl_put(%struct.cls_fl_filter* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %144

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 4
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %46 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %47 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %50 = call i32 @tc_cls_common_offload_init(i32* %44, %struct.tcf_proto* %45, i32 %48, %struct.netlink_ext_ack* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @FLOW_CLS_REPLACE, align 4
  br label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @FLOW_CLS_DESTROY, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %61 = ptrtoint %struct.cls_fl_filter* %60 to i64
  %62 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %64 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i32* %66, i32** %70, align 8
  %71 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %72 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %71, i32 0, i32 5
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32* %74, i32** %78, align 8
  %79 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %80 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32* %80, i32** %84, align 8
  %85 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %89 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %88, i32 0, i32 3
  %90 = call i32 @tc_setup_flow_action(i32* %87, i32* %89, i32 1)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %57
  %94 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = call i32 @kfree(%struct.TYPE_11__* %95)
  %97 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %98 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @tc_skip_sw(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %104 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %106 = call i32 @__fl_put(%struct.cls_fl_filter* %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %144

108:                                              ; preds = %93
  br label %140

109:                                              ; preds = %57
  %110 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %111 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  %115 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %116 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* @TC_SETUP_CLSFLOWER, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %122 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %121, i32 0, i32 1
  %123 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %124 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %123, i32 0, i32 0
  %125 = call i32 @tc_setup_cb_reoffload(%struct.tcf_block* %115, %struct.tcf_proto* %116, i32 %117, i32* %118, i32 %119, %struct.flow_cls_offload* %13, i8* %120, i32* %122, i32* %124)
  store i32 %125, i32* %15, align 4
  %126 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = call i32 @tc_cleanup_flow_action(i32* %128)
  %130 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = call i32 @kfree(%struct.TYPE_11__* %131)
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %109
  %136 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %137 = call i32 @__fl_put(%struct.cls_fl_filter* %136)
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %6, align 4
  br label %144

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139, %108
  %141 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %14, align 8
  %142 = call i32 @__fl_put(%struct.cls_fl_filter* %141)
  br label %23

143:                                              ; preds = %23
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %135, %102, %38
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT_RTNL(...) #2

declare dso_local %struct.cls_fl_filter* @fl_get_next_hw_filter(%struct.tcf_proto*, %struct.cls_fl_filter*, i32) #2

declare dso_local %struct.TYPE_11__* @flow_rule_alloc(i32) #2

declare dso_local i32 @tcf_exts_num_actions(i32*) #2

declare dso_local i32 @__fl_put(%struct.cls_fl_filter*) #2

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_flow_action(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.TYPE_11__*) #2

declare dso_local i64 @tc_skip_sw(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @tc_setup_cb_reoffload(%struct.tcf_block*, %struct.tcf_proto*, i32, i32*, i32, %struct.flow_cls_offload*, i8*, i32*, i32*) #2

declare dso_local i32 @tc_cleanup_flow_action(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
