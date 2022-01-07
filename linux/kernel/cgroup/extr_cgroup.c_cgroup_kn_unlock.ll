; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_kn_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_kn_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_2__*, %struct.cgroup* }
%struct.TYPE_2__ = type { %struct.cgroup* }
%struct.cgroup = type { i32 }

@KERNFS_DIR = common dso_local global i64 0, align 8
@cgroup_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_kn_unlock(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.cgroup*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %5 = call i64 @kernfs_type(%struct.kernfs_node* %4)
  %6 = load i64, i64* @KERNFS_DIR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %9, i32 0, i32 1
  %11 = load %struct.cgroup*, %struct.cgroup** %10, align 8
  store %struct.cgroup* %11, %struct.cgroup** %3, align 8
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.cgroup*, %struct.cgroup** %16, align 8
  store %struct.cgroup* %17, %struct.cgroup** %3, align 8
  br label %18

18:                                               ; preds = %12, %8
  %19 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %21 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %20)
  %22 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %23 = call i32 @cgroup_put(%struct.cgroup* %22)
  ret void
}

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kernfs_unbreak_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_put(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
