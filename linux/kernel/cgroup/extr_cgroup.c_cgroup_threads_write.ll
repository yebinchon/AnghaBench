; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_threads_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_threads_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cgroup = type { i64 }
%struct.task_struct = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @cgroup_threads_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_threads_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgroup*, align 8
  %11 = alloca %struct.cgroup*, align 8
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strstrip(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %17 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.cgroup* @cgroup_kn_lock_live(i32 %18, i32 0)
  store %struct.cgroup* %19, %struct.cgroup** %11, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %21 = icmp ne %struct.cgroup* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %84

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.task_struct* @cgroup_procs_write_start(i8* %26, i32 0)
  store %struct.task_struct* %27, %struct.task_struct** %12, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %29 = call i32 @PTR_ERR_OR_ZERO(%struct.task_struct* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %70

33:                                               ; preds = %25
  %34 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %35 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %36 = call %struct.cgroup* @task_cgroup_from_root(%struct.task_struct* %35, i32* @cgrp_dfl_root)
  store %struct.cgroup* %36, %struct.cgroup** %10, align 8
  %37 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %38 = load %struct.cgroup*, %struct.cgroup** %10, align 8
  %39 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %40 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %41 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cgroup_procs_write_permission(%struct.cgroup* %38, %struct.cgroup* %39, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %67

52:                                               ; preds = %33
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  %55 = load %struct.cgroup*, %struct.cgroup** %10, align 8
  %56 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %59 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %67

63:                                               ; preds = %52
  %64 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %66 = call i32 @cgroup_attach_task(%struct.cgroup* %64, %struct.task_struct* %65, i32 0)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %62, %51
  %68 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %69 = call i32 @cgroup_procs_write_finish(%struct.task_struct* %68)
  br label %70

70:                                               ; preds = %67, %32
  %71 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %72 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cgroup_kn_unlock(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = sext i32 %75 to i64
  br label %81

79:                                               ; preds = %70
  %80 = load i64, i64* %8, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i64 [ %78, %77 ], [ %80, %79 ]
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %22
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i8* @strstrip(i8*) #1

declare dso_local %struct.cgroup* @cgroup_kn_lock_live(i32, i32) #1

declare dso_local %struct.task_struct* @cgroup_procs_write_start(i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cgroup* @task_cgroup_from_root(%struct.task_struct*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cgroup_procs_write_permission(%struct.cgroup*, %struct.cgroup*, i32) #1

declare dso_local i32 @cgroup_attach_task(%struct.cgroup*, %struct.task_struct*, i32) #1

declare dso_local i32 @cgroup_procs_write_finish(%struct.task_struct*) #1

declare dso_local i32 @cgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
