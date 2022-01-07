; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.route4_head = type { i32*, i32* }
%struct.route4_bucket = type { i32*, i32* }
%struct.route4_filter = type { i32, i32, i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @route4_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route4_destroy(%struct.tcf_proto* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.route4_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.route4_bucket*, align 8
  %11 = alloca %struct.route4_filter*, align 8
  %12 = alloca %struct.route4_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %14 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @rtnl_dereference(i32 %15)
  %17 = bitcast i8* %16 to %struct.route4_head*
  store %struct.route4_head* %17, %struct.route4_head** %7, align 8
  %18 = load %struct.route4_head*, %struct.route4_head** %7, align 8
  %19 = icmp eq %struct.route4_head* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %108

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %101, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 256
  br i1 %24, label %25, label %104

25:                                               ; preds = %22
  %26 = load %struct.route4_head*, %struct.route4_head** %7, align 8
  %27 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @rtnl_dereference(i32 %32)
  %34 = bitcast i8* %33 to %struct.route4_bucket*
  store %struct.route4_bucket* %34, %struct.route4_bucket** %10, align 8
  %35 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %36 = icmp ne %struct.route4_bucket* %35, null
  br i1 %36, label %37, label %100

37:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 32
  br i1 %40, label %41, label %87

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %82, %41
  %43 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %44 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @rtnl_dereference(i32 %49)
  %51 = bitcast i8* %50 to %struct.route4_filter*
  store %struct.route4_filter* %51, %struct.route4_filter** %11, align 8
  %52 = icmp ne %struct.route4_filter* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %42
  %54 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %55 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @rtnl_dereference(i32 %56)
  %58 = bitcast i8* %57 to %struct.route4_filter*
  store %struct.route4_filter* %58, %struct.route4_filter** %12, align 8
  %59 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %60 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.route4_filter*, %struct.route4_filter** %12, align 8
  %67 = call i32 @RCU_INIT_POINTER(i32 %65, %struct.route4_filter* %66)
  %68 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %69 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %70 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %69, i32 0, i32 1
  %71 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %68, i32* %70)
  %72 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %73 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %72, i32 0, i32 0
  %74 = call i64 @tcf_exts_get_net(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %53
  %77 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %78 = call i32 @route4_queue_work(%struct.route4_filter* %77)
  br label %82

79:                                               ; preds = %53
  %80 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %81 = call i32 @__route4_delete_filter(%struct.route4_filter* %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %42

83:                                               ; preds = %42
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %38

87:                                               ; preds = %38
  %88 = load %struct.route4_head*, %struct.route4_head** %7, align 8
  %89 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @RCU_INIT_POINTER(i32 %94, %struct.route4_filter* null)
  %96 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %97 = bitcast %struct.route4_bucket* %96 to %struct.route4_head*
  %98 = load i32, i32* @rcu, align 4
  %99 = call i32 @kfree_rcu(%struct.route4_head* %97, i32 %98)
  br label %100

100:                                              ; preds = %87, %25
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %22

104:                                              ; preds = %22
  %105 = load %struct.route4_head*, %struct.route4_head** %7, align 8
  %106 = load i32, i32* @rcu, align 4
  %107 = call i32 @kfree_rcu(%struct.route4_head* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %20
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.route4_filter*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @route4_queue_work(%struct.route4_filter*) #1

declare dso_local i32 @__route4_delete_filter(%struct.route4_filter*) #1

declare dso_local i32 @kfree_rcu(%struct.route4_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
