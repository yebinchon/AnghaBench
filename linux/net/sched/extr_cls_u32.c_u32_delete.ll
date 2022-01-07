; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_common* }
%struct.tc_u_common = type { i32, i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_u_hnode = type { i32, i64, i32 }
%struct.tc_u_knode = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Not allowed to delete root node\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can not delete in-use filter\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i8*, i32*, i32, %struct.netlink_ext_ack*)* @u32_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_delete(%struct.tcf_proto* %0, i8* %1, i32* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.tc_u_hnode*, align 8
  %13 = alloca %struct.tc_u_common*, align 8
  %14 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %16, %struct.tc_u_hnode** %12, align 8
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %18 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %17, i32 0, i32 0
  %19 = load %struct.tc_u_common*, %struct.tc_u_common** %18, align 8
  store %struct.tc_u_common* %19, %struct.tc_u_common** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %21 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @TC_U32_KEY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %27 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %28 = bitcast %struct.tc_u_hnode* %27 to %struct.tc_u_knode*
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %30 = call i32 @u32_remove_hw_knode(%struct.tcf_proto* %26, %struct.tc_u_knode* %28, %struct.netlink_ext_ack* %29)
  %31 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %32 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %33 = bitcast %struct.tc_u_hnode* %32 to %struct.tc_u_knode*
  %34 = call i32 @u32_delete_key(%struct.tcf_proto* %31, %struct.tc_u_knode* %33)
  store i32 %34, i32* %14, align 4
  br label %61

35:                                               ; preds = %5
  %36 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %37 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %76

45:                                               ; preds = %35
  %46 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %47 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %52 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %12, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %54 = call i32 @u32_destroy_hnode(%struct.tcf_proto* %51, %struct.tc_u_hnode* %52, %struct.netlink_ext_ack* %53)
  br label %60

55:                                               ; preds = %45
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %57 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %25
  %62 = load %struct.tc_u_common*, %struct.tc_u_common** %13, align 8
  %63 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.tc_u_common*, %struct.tc_u_common** %13, align 8
  %68 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ false, %61 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %71, %55, %40
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @TC_U32_KEY(i32) #1

declare dso_local i32 @u32_remove_hw_knode(%struct.tcf_proto*, %struct.tc_u_knode*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @u32_delete_key(%struct.tcf_proto*, %struct.tc_u_knode*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @u32_destroy_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
