; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_kn_lock_live.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_kn_lock_live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.kernfs_node = type { %struct.TYPE_2__*, %struct.cgroup* }
%struct.TYPE_2__ = type { %struct.cgroup* }

@KERNFS_DIR = common dso_local global i64 0, align 8
@cgroup_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup* @cgroup_kn_lock_live(%struct.kernfs_node* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %8 = call i64 @kernfs_type(%struct.kernfs_node* %7)
  %9 = load i64, i64* @KERNFS_DIR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %13 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %12, i32 0, i32 1
  %14 = load %struct.cgroup*, %struct.cgroup** %13, align 8
  store %struct.cgroup* %14, %struct.cgroup** %6, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.cgroup*, %struct.cgroup** %19, align 8
  store %struct.cgroup* %20, %struct.cgroup** %6, align 8
  br label %21

21:                                               ; preds = %15, %11
  %22 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %23 = call i32 @cgroup_tryget(%struct.cgroup* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store %struct.cgroup* null, %struct.cgroup** %3, align 8
  br label %45

26:                                               ; preds = %21
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %28 = call i32 @kernfs_break_active_protection(%struct.kernfs_node* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %33 = call i32 @cgroup_lock_and_drain_offline(%struct.cgroup* %32)
  br label %36

34:                                               ; preds = %26
  %35 = call i32 @mutex_lock(i32* @cgroup_mutex)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %38 = call i32 @cgroup_is_dead(%struct.cgroup* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  store %struct.cgroup* %41, %struct.cgroup** %3, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %44 = call i32 @cgroup_kn_unlock(%struct.kernfs_node* %43)
  store %struct.cgroup* null, %struct.cgroup** %3, align 8
  br label %45

45:                                               ; preds = %42, %40, %25
  %46 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  ret %struct.cgroup* %46
}

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_tryget(%struct.cgroup*) #1

declare dso_local i32 @kernfs_break_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_lock_and_drain_offline(%struct.cgroup*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cgroup_is_dead(%struct.cgroup*) #1

declare dso_local i32 @cgroup_kn_unlock(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
