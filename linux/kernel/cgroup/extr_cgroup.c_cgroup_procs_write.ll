; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cgroup = type { i32 }
%struct.task_struct = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@css_set_lock = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @cgroup_procs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cgroup_procs_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgroup*, align 8
  %11 = alloca %struct.cgroup*, align 8
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i64, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %15 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.cgroup* @cgroup_kn_lock_live(i32 %16, i32 0)
  store %struct.cgroup* %17, %struct.cgroup** %11, align 8
  %18 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %19 = icmp ne %struct.cgroup* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @ENODEV, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %69

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.task_struct* @cgroup_procs_write_start(i8* %24, i32 1)
  store %struct.task_struct* %25, %struct.task_struct** %12, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %27 = call i64 @PTR_ERR_OR_ZERO(%struct.task_struct* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %57

31:                                               ; preds = %23
  %32 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %33 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %34 = call %struct.cgroup* @task_cgroup_from_root(%struct.task_struct* %33, i32* @cgrp_dfl_root)
  store %struct.cgroup* %34, %struct.cgroup** %10, align 8
  %35 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %36 = load %struct.cgroup*, %struct.cgroup** %10, align 8
  %37 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %38 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %39 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @cgroup_procs_write_permission(%struct.cgroup* %36, %struct.cgroup* %37, i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %54

50:                                               ; preds = %31
  %51 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %53 = call i64 @cgroup_attach_task(%struct.cgroup* %51, %struct.task_struct* %52, i32 1)
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %56 = call i32 @cgroup_procs_write_finish(%struct.task_struct* %55)
  br label %57

57:                                               ; preds = %54, %30
  %58 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %59 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cgroup_kn_unlock(i32 %60)
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i64 [ %62, %64 ], [ %66, %65 ]
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %67, %20
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.cgroup* @cgroup_kn_lock_live(i32, i32) #1

declare dso_local %struct.task_struct* @cgroup_procs_write_start(i8*, i32) #1

declare dso_local i64 @PTR_ERR_OR_ZERO(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cgroup* @task_cgroup_from_root(%struct.task_struct*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @cgroup_procs_write_permission(%struct.cgroup*, %struct.cgroup*, i32) #1

declare dso_local i64 @cgroup_attach_task(%struct.cgroup*, %struct.task_struct*, i32) #1

declare dso_local i32 @cgroup_procs_write_finish(%struct.task_struct*) #1

declare dso_local i32 @cgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
