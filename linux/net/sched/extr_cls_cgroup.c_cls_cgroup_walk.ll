; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i64, i64, i64 (%struct.tcf_proto.0*, %struct.cls_cgroup_head*, %struct.tcf_walker*)*, i32 }
%struct.tcf_proto.0 = type opaque
%struct.cls_cgroup_head = type opaque
%struct.cls_cgroup_head.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @cls_cgroup_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_cgroup_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cls_cgroup_head.1*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cls_cgroup_head.1* @rtnl_dereference(i32 %10)
  store %struct.cls_cgroup_head.1* %11, %struct.cls_cgroup_head.1** %7, align 8
  %12 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %13 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %16 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.cls_cgroup_head.1*, %struct.cls_cgroup_head.1** %7, align 8
  %22 = icmp ne %struct.cls_cgroup_head.1* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %44

24:                                               ; preds = %20
  %25 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %26 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %25, i32 0, i32 2
  %27 = load i64 (%struct.tcf_proto.0*, %struct.cls_cgroup_head*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.cls_cgroup_head*, %struct.tcf_walker*)** %26, align 8
  %28 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %29 = bitcast %struct.tcf_proto* %28 to %struct.tcf_proto.0*
  %30 = load %struct.cls_cgroup_head.1*, %struct.cls_cgroup_head.1** %7, align 8
  %31 = bitcast %struct.cls_cgroup_head.1* %30 to %struct.cls_cgroup_head*
  %32 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %33 = call i64 %27(%struct.tcf_proto.0* %29, %struct.cls_cgroup_head* %31, %struct.tcf_walker* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %37 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %36, i32 0, i32 3
  store i32 1, i32* %37, align 8
  br label %44

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %41 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %39, %35, %23
  ret void
}

declare dso_local %struct.cls_cgroup_head.1* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
