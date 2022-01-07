; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_replace_hw_hnode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_replace_hw_hnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.tc_u_hnode = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@TC_CLSU32_NEW_HNODE = common dso_local global i32 0, align 4
@TC_SETUP_CLSU32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.tc_u_hnode*, i32, %struct.netlink_ext_ack*)* @u32_replace_hw_hnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_replace_hw_hnode(%struct.tcf_proto* %0, %struct.tc_u_hnode* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tc_u_hnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.tcf_block*, align 8
  %11 = alloca %struct.tc_cls_u32_offload, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store %struct.tc_u_hnode* %1, %struct.tc_u_hnode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %16 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.tcf_block*, %struct.tcf_block** %18, align 8
  store %struct.tcf_block* %19, %struct.tcf_block** %10, align 8
  %20 = bitcast %struct.tc_cls_u32_offload* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 20, i1 false)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @tc_skip_sw(i32 %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %11, i32 0, i32 2
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %27 = call i32 @tc_cls_common_offload_init(i32* %23, %struct.tcf_proto* %24, i32 %25, %struct.netlink_ext_ack* %26)
  %28 = load i32, i32* @TC_CLSU32_NEW_HNODE, align 4
  %29 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %11, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %31 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %36 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %41 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %11, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tcf_block*, %struct.tcf_block** %10, align 8
  %46 = load i32, i32* @TC_SETUP_CLSU32, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @tc_setup_cb_call(%struct.tcf_block* %45, i32 %46, %struct.tc_cls_u32_offload* %11, i32 %47, i32 1)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %53 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %54 = call i32 @u32_clear_hw_hnode(%struct.tcf_proto* %52, %struct.tc_u_hnode* %53, i32* null)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %71

56:                                               ; preds = %4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %64, %61
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %67, %51
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tc_skip_sw(i32) #2

declare dso_local i32 @tc_cls_common_offload_init(i32*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @tc_setup_cb_call(%struct.tcf_block*, i32, %struct.tc_cls_u32_offload*, i32, i32) #2

declare dso_local i32 @u32_clear_hw_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
