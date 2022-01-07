; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_u32.c_u32_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_common*, i32 }
%struct.tc_u_common = type { i64, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_u_hnode = type { i32, i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @u32_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_destroy(%struct.tcf_proto* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.tc_u_common*, align 8
  %8 = alloca %struct.tc_u_hnode*, align 8
  %9 = alloca %struct.tc_u_hnode*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.tc_u_common*, %struct.tc_u_common** %11, align 8
  store %struct.tc_u_common* %12, %struct.tc_u_common** %7, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %14 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.tc_u_hnode* @rtnl_dereference(i32 %15)
  store %struct.tc_u_hnode* %16, %struct.tc_u_hnode** %8, align 8
  %17 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %18 = icmp eq %struct.tc_u_hnode* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %22 = icmp ne %struct.tc_u_hnode* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %25 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %31 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %8, align 8
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %33 = call i32 @u32_destroy_hnode(%struct.tcf_proto* %30, %struct.tc_u_hnode* %31, %struct.netlink_ext_ack* %32)
  br label %34

34:                                               ; preds = %29, %23, %3
  %35 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %36 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %42 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %41, i32 0, i32 3
  %43 = call i32 @hlist_del(i32* %42)
  br label %44

44:                                               ; preds = %71, %40
  %45 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %46 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.tc_u_hnode* @rtnl_dereference(i32 %47)
  store %struct.tc_u_hnode* %48, %struct.tc_u_hnode** %9, align 8
  %49 = icmp ne %struct.tc_u_hnode* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %52 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %9, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %54 = call i32 @u32_clear_hnode(%struct.tcf_proto* %51, %struct.tc_u_hnode* %52, %struct.netlink_ext_ack* %53)
  %55 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %56 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %9, align 8
  %59 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @RCU_INIT_POINTER(i32 %57, i32 %60)
  %62 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %9, align 8
  %63 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %9, align 8
  %69 = load i32, i32* @rcu, align 4
  %70 = call i32 @kfree_rcu(%struct.tc_u_hnode* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %50
  br label %44

72:                                               ; preds = %44
  %73 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %74 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %73, i32 0, i32 1
  %75 = call i32 @idr_destroy(i32* %74)
  %76 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %77 = call i32 @kfree(%struct.tc_u_common* %76)
  br label %78

78:                                               ; preds = %72, %34
  %79 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %80 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %79, i32 0, i32 0
  store %struct.tc_u_common* null, %struct.tc_u_common** %80, align 8
  ret void
}

declare dso_local %struct.tc_u_hnode* @rtnl_dereference(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @u32_destroy_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @u32_clear_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32) #1

declare dso_local i32 @kfree_rcu(%struct.tc_u_hnode*, i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.tc_u_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
