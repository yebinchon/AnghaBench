; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_update_frozen.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_update_frozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@css_set_lock = common dso_local global i32 0, align 4
@CGRP_FREEZE = common dso_local global i32 0, align 4
@CGRP_FROZEN = common dso_local global i32 0, align 4
@notify_frozen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_update_frozen(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %4 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  %5 = load i32, i32* @CGRP_FREEZE, align 4
  %6 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %7 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %12 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %16 = call i64 @__cgroup_task_count(%struct.cgroup* %15)
  %17 = icmp eq i64 %14, %16
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i1 [ false, %1 ], [ %17, %10 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* @CGRP_FROZEN, align 4
  %25 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %26 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %58

30:                                               ; preds = %23
  %31 = load i32, i32* @CGRP_FROZEN, align 4
  %32 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %33 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %32, i32 0, i32 1
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  br label %47

35:                                               ; preds = %18
  %36 = load i32, i32* @CGRP_FROZEN, align 4
  %37 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %38 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %58

42:                                               ; preds = %35
  %43 = load i32, i32* @CGRP_FROZEN, align 4
  %44 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %45 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %30
  %48 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %49 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %48, i32 0, i32 0
  %50 = call i32 @cgroup_file_notify(i32* %49)
  %51 = load i32, i32* @notify_frozen, align 4
  %52 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @TRACE_CGROUP_PATH(i32 %51, %struct.cgroup* %52, i32 %53)
  %55 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @cgroup_propagate_frozen(%struct.cgroup* %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %41, %29
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @__cgroup_task_count(%struct.cgroup*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cgroup_file_notify(i32*) #1

declare dso_local i32 @TRACE_CGROUP_PATH(i32, %struct.cgroup*, i32) #1

declare dso_local i32 @cgroup_propagate_frozen(%struct.cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
