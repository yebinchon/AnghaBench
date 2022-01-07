; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_clear_hnode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_clear_hnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_common* }
%struct.tc_u_common = type { i32 }
%struct.tc_u_hnode = type { i32, i32, i32* }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_u_knode = type { i32, i32, i32, i32, i32 }

@u32_delete_key_freepf_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tc_u_hnode*, %struct.netlink_ext_ack*)* @u32_clear_hnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_clear_hnode(%struct.tcf_proto* %0, %struct.tc_u_hnode* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tc_u_hnode*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.tc_u_common*, align 8
  %8 = alloca %struct.tc_u_knode*, align 8
  %9 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tc_u_hnode* %1, %struct.tc_u_hnode** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.tc_u_common*, %struct.tc_u_common** %11, align 8
  store %struct.tc_u_common* %12, %struct.tc_u_common** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %75, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %16 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %14, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %73, %19
  %21 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %22 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.tc_u_knode* @rtnl_dereference(i32 %27)
  store %struct.tc_u_knode* %28, %struct.tc_u_knode** %8, align 8
  %29 = icmp ne %struct.tc_u_knode* %28, null
  br i1 %29, label %30, label %74

30:                                               ; preds = %20
  %31 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %32 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %39 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.tc_u_knode* @rtnl_dereference(i32 %40)
  %42 = call i32 @RCU_INIT_POINTER(i32 %37, %struct.tc_u_knode* %41)
  %43 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %44 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %48 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %49 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %48, i32 0, i32 3
  %50 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %47, i32* %49)
  %51 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %52 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %54 = call i32 @u32_remove_hw_knode(%struct.tcf_proto* %51, %struct.tc_u_knode* %52, %struct.netlink_ext_ack* %53)
  %55 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %56 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %55, i32 0, i32 1
  %57 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %58 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @idr_remove(i32* %56, i32 %59)
  %61 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %62 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %61, i32 0, i32 1
  %63 = call i64 @tcf_exts_get_net(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %30
  %66 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %67 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %66, i32 0, i32 0
  %68 = load i32, i32* @u32_delete_key_freepf_work, align 4
  %69 = call i32 @tcf_queue_work(i32* %67, i32 %68)
  br label %73

70:                                               ; preds = %30
  %71 = load %struct.tc_u_knode*, %struct.tc_u_knode** %8, align 8
  %72 = call i32 @u32_destroy_key(%struct.tc_u_knode* %71, i32 1)
  br label %73

73:                                               ; preds = %70, %65
  br label %20

74:                                               ; preds = %20
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %13

78:                                               ; preds = %13
  ret void
}

declare dso_local %struct.tc_u_knode* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.tc_u_knode*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @u32_remove_hw_knode(%struct.tcf_proto*, %struct.tc_u_knode*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @u32_destroy_key(%struct.tc_u_knode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
