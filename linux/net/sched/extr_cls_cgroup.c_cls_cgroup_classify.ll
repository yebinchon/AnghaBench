; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_cgroup.c_cls_cgroup_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_result = type { i64, i64 }
%struct.cls_cgroup_head = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @cls_cgroup_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_cgroup_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.cls_cgroup_head*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cls_cgroup_head* @rcu_dereference_bh(i32 %12)
  store %struct.cls_cgroup_head* %13, %struct.cls_cgroup_head** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @task_get_classid(%struct.sk_buff* %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %8, align 8
  %17 = icmp ne %struct.cls_cgroup_head* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %45

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %8, align 8
  %30 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %29, i32 0, i32 1
  %31 = call i32 @tcf_em_tree_match(%struct.sk_buff* %28, i32* %30, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %37 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %39 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %8, align 8
  %42 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %41, i32 0, i32 0
  %43 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %44 = call i32 @tcf_exts_exec(%struct.sk_buff* %40, i32* %42, %struct.tcf_result* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %33, %26, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.cls_cgroup_head* @rcu_dereference_bh(i32) #1

declare dso_local i64 @task_get_classid(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcf_em_tree_match(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @tcf_exts_exec(%struct.sk_buff*, i32*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
