; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_reoffload_knode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_reoffload_knode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.tc_u_knode = type { i32, i32, i64, i32, i32, i32, i64, i64, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_u_hnode = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i64, i64, i32, i32 }

@TC_CLSU32_REPLACE_KNODE = common dso_local global i32 0, align 4
@TC_CLSU32_DELETE_KNODE = common dso_local global i32 0, align 4
@TC_SETUP_CLSU32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.tc_u_knode*, i32, i32*, i8*, %struct.netlink_ext_ack*)* @u32_reoffload_knode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_reoffload_knode(%struct.tcf_proto* %0, %struct.tc_u_knode* %1, i32 %2, i32* %3, i8* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcf_proto*, align 8
  %9 = alloca %struct.tc_u_knode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.tc_u_hnode*, align 8
  %15 = alloca %struct.tcf_block*, align 8
  %16 = alloca %struct.tc_cls_u32_offload, align 8
  %17 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %8, align 8
  store %struct.tc_u_knode* %1, %struct.tc_u_knode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %18 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %19 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.tc_u_hnode* @rtnl_dereference(i64 %20)
  store %struct.tc_u_hnode* %21, %struct.tc_u_hnode** %14, align 8
  %22 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %23 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.tcf_block*, %struct.tcf_block** %25, align 8
  store %struct.tcf_block* %26, %struct.tcf_block** %15, align 8
  %27 = bitcast %struct.tc_cls_u32_offload* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 64, i1 false)
  %28 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 2
  %29 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %30 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %31 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %34 = call i32 @tc_cls_common_offload_init(i32* %28, %struct.tcf_proto* %29, i32 %32, %struct.netlink_ext_ack* %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @TC_CLSU32_REPLACE_KNODE, align 4
  br label %41

39:                                               ; preds = %6
  %40 = load i32, i32* @TC_CLSU32_DELETE_KNODE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %45 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %41
  %52 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %53 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %62 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %66 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %70 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %74 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %51
  %78 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %14, align 8
  %79 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %51
  br label %84

84:                                               ; preds = %83, %41
  %85 = load %struct.tcf_block*, %struct.tcf_block** %15, align 8
  %86 = load %struct.tcf_proto*, %struct.tcf_proto** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* @TC_SETUP_CLSU32, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %92 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %91, i32 0, i32 1
  %93 = load %struct.tc_u_knode*, %struct.tc_u_knode** %9, align 8
  %94 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %93, i32 0, i32 0
  %95 = call i32 @tc_setup_cb_reoffload(%struct.tcf_block* %85, %struct.tcf_proto* %86, i32 %87, i32* %88, i32 %89, %struct.tc_cls_u32_offload* %16, i8* %90, i32* %92, i32* %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %7, align 4
  br label %101

100:                                              ; preds = %84
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %98
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.tc_u_hnode* @rtnl_dereference(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tc_setup_cb_reoffload(%struct.tcf_block*, %struct.tcf_proto*, i32, i32*, i32, %struct.tc_cls_u32_offload*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
