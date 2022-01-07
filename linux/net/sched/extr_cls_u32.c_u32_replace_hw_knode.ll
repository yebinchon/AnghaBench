; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_replace_hw_knode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_replace_hw_knode.c"
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
@TC_SETUP_CLSU32 = common dso_local global i32 0, align 4
@TCA_CLS_FLAGS_IN_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.tc_u_knode*, i32, %struct.netlink_ext_ack*)* @u32_replace_hw_knode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_replace_hw_knode(%struct.tcf_proto* %0, %struct.tc_u_knode* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tc_u_knode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.tc_u_hnode*, align 8
  %11 = alloca %struct.tcf_block*, align 8
  %12 = alloca %struct.tc_cls_u32_offload, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store %struct.tc_u_knode* %1, %struct.tc_u_knode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %16 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.tc_u_hnode* @rtnl_dereference(i64 %17)
  store %struct.tc_u_hnode* %18, %struct.tc_u_hnode** %10, align 8
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %20 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.tcf_block*, %struct.tcf_block** %22, align 8
  store %struct.tcf_block* %23, %struct.tcf_block** %11, align 8
  %24 = bitcast %struct.tc_cls_u32_offload* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 64, i1 false)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @tc_skip_sw(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 2
  %28 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %31 = call i32 @tc_cls_common_offload_init(i32* %27, %struct.tcf_proto* %28, i32 %29, %struct.netlink_ext_ack* %30)
  %32 = load i32, i32* @TC_CLSU32_REPLACE_KNODE, align 4
  %33 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %35 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %40 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %49 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32* %49, i32** %51, align 8
  %52 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %53 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %57 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %61 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %4
  %65 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %10, align 8
  %66 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %12, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %64, %4
  %71 = load %struct.tcf_block*, %struct.tcf_block** %11, align 8
  %72 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %73 = load i32, i32* @TC_SETUP_CLSU32, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %76 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %75, i32 0, i32 0
  %77 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %78 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %77, i32 0, i32 1
  %79 = call i32 @tc_setup_cb_add(%struct.tcf_block* %71, %struct.tcf_proto* %72, i32 %73, %struct.tc_cls_u32_offload* %12, i32 %74, i32* %76, i32* %78, i32 1)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %84 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %85 = call i32 @u32_remove_hw_knode(%struct.tcf_proto* %83, %struct.tc_u_knode* %84, i32* null)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %5, align 4
  br label %101

87:                                               ; preds = %70
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %92 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TCA_CLS_FLAGS_IN_HW, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %101

100:                                              ; preds = %90, %87
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %97, %82
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.tc_u_hnode* @rtnl_dereference(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tc_skip_sw(i32) #1

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tc_setup_cb_add(%struct.tcf_block*, %struct.tcf_proto*, i32, %struct.tc_cls_u32_offload*, i32, i32*, i32*, i32) #1

declare dso_local i32 @u32_remove_hw_knode(%struct.tcf_proto*, %struct.tc_u_knode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
