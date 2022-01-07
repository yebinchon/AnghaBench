; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rsvp_head = type { i32*, i32 }
%struct.rsvp_session = type { i32*, i32 }
%struct.rsvp_filter = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @rsvp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsvp_destroy(%struct.tcf_proto* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.rsvp_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsvp_session*, align 8
  %11 = alloca %struct.rsvp_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @rtnl_dereference(i32 %14)
  %16 = bitcast i8* %15 to %struct.rsvp_head*
  store %struct.rsvp_head* %16, %struct.rsvp_head** %7, align 8
  %17 = load %struct.rsvp_head*, %struct.rsvp_head** %7, align 8
  %18 = icmp eq %struct.rsvp_head* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %95

20:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %87, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %90

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %82, %24
  %26 = load %struct.rsvp_head*, %struct.rsvp_head** %7, align 8
  %27 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @rtnl_dereference(i32 %32)
  %34 = bitcast i8* %33 to %struct.rsvp_session*
  store %struct.rsvp_session* %34, %struct.rsvp_session** %10, align 8
  %35 = icmp ne %struct.rsvp_session* %34, null
  br i1 %35, label %36, label %86

36:                                               ; preds = %25
  %37 = load %struct.rsvp_head*, %struct.rsvp_head** %7, align 8
  %38 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %45 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @RCU_INIT_POINTER(i32 %43, i32 %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %79, %36
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 16
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %63, %51
  %53 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %54 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @rtnl_dereference(i32 %59)
  %61 = bitcast i8* %60 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %61, %struct.rsvp_filter** %11, align 8
  %62 = icmp ne %struct.rsvp_filter* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %65 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rsvp_filter*, %struct.rsvp_filter** %11, align 8
  %72 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rcu_assign_pointer(i32 %70, i32 %73)
  %75 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %76 = load %struct.rsvp_filter*, %struct.rsvp_filter** %11, align 8
  %77 = call i32 @rsvp_delete_filter(%struct.tcf_proto* %75, %struct.rsvp_filter* %76)
  br label %52

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %48

82:                                               ; preds = %48
  %83 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %84 = load i32, i32* @rcu, align 4
  %85 = call i32 @kfree_rcu(%struct.rsvp_session* %83, i32 %84)
  br label %25

86:                                               ; preds = %25
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %21

90:                                               ; preds = %21
  %91 = load %struct.rsvp_head*, %struct.rsvp_head** %7, align 8
  %92 = bitcast %struct.rsvp_head* %91 to %struct.rsvp_session*
  %93 = load i32, i32* @rcu, align 4
  %94 = call i32 @kfree_rcu(%struct.rsvp_session* %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %19
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @rsvp_delete_filter(%struct.tcf_proto*, %struct.rsvp_filter*) #1

declare dso_local i32 @kfree_rcu(%struct.rsvp_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
