; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_reoffload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_reoffload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_mall_head = type { i32, i32, i32 }
%struct.tc_cls_matchall_offload = type { i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TC_CLSMATCHALL_REPLACE = common dso_local global i32 0, align 4
@TC_CLSMATCHALL_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to setup flow action\00", align 1
@TC_SETUP_CLSMATCHALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i32, i32*, i8*, %struct.netlink_ext_ack*)* @mall_reoffload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mall_reoffload(%struct.tcf_proto* %0, i32 %1, i32* %2, i8* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.cls_mall_head*, align 8
  %13 = alloca %struct.tc_cls_matchall_offload, align 8
  %14 = alloca %struct.tcf_block*, align 8
  %15 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.cls_mall_head* @rtnl_dereference(i32 %18)
  store %struct.cls_mall_head* %19, %struct.cls_mall_head** %12, align 8
  %20 = bitcast %struct.tc_cls_matchall_offload* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %22 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.tcf_block*, %struct.tcf_block** %24, align 8
  store %struct.tcf_block* %25, %struct.tcf_block** %14, align 8
  %26 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %27 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @tc_skip_hw(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %113

32:                                               ; preds = %5
  %33 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %34 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %33, i32 0, i32 2
  %35 = call i32 @tcf_exts_num_actions(i32* %34)
  %36 = call %struct.TYPE_5__* @flow_rule_alloc(i32 %35)
  %37 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 1
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %37, align 8
  %38 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %113

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 3
  %46 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %47 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %48 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %51 = call i32 @tc_cls_common_offload_init(i32* %45, %struct.tcf_proto* %46, i32 %49, %struct.netlink_ext_ack* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @TC_CLSMATCHALL_REPLACE, align 4
  br label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @TC_CLSMATCHALL_DESTROY, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %62 = ptrtoint %struct.cls_mall_head* %61 to i64
  %63 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %68 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %67, i32 0, i32 2
  %69 = call i32 @tc_setup_flow_action(i32* %66, i32* %68, i32 1)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @kfree(%struct.TYPE_5__* %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %80 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @tc_skip_sw(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %86 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %113

88:                                               ; preds = %78, %72
  store i32 0, i32* %6, align 4
  br label %113

89:                                               ; preds = %58
  %90 = load %struct.tcf_block*, %struct.tcf_block** %14, align 8
  %91 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @TC_SETUP_CLSMATCHALL, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %97 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %96, i32 0, i32 1
  %98 = load %struct.cls_mall_head*, %struct.cls_mall_head** %12, align 8
  %99 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %98, i32 0, i32 0
  %100 = call i32 @tc_setup_cb_reoffload(%struct.tcf_block* %90, %struct.tcf_proto* %91, i32 %92, i32* %93, i32 %94, %struct.tc_cls_matchall_offload* %13, i8* %95, i32* %97, i32* %99)
  store i32 %100, i32* %15, align 4
  %101 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 @tc_cleanup_flow_action(i32* %103)
  %105 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %13, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = call i32 @kfree(%struct.TYPE_5__* %106)
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %89
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %6, align 4
  br label %113

112:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %110, %88, %84, %41, %31
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.cls_mall_head* @rtnl_dereference(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @tc_skip_hw(i32) #1

declare dso_local %struct.TYPE_5__* @flow_rule_alloc(i32) #1

declare dso_local i32 @tcf_exts_num_actions(i32*) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tc_setup_flow_action(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i64 @tc_skip_sw(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @tc_setup_cb_reoffload(%struct.tcf_block*, %struct.tcf_proto*, i32, i32*, i32, %struct.tc_cls_matchall_offload*, i8*, i32*, i32*) #1

declare dso_local i32 @tc_cleanup_flow_action(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
