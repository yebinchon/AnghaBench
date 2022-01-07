; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_show_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_show_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.kernfs_root = type { i32 }
%struct.cgroup_root = type { i32 }
%struct.cgroup = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_show_path(%struct.seq_file* %0, %struct.kernfs_node* %1, %struct.kernfs_root* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cgroup_root*, align 8
  %11 = alloca %struct.cgroup*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_root* %2, %struct.kernfs_root** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %12 = load %struct.kernfs_root*, %struct.kernfs_root** %7, align 8
  %13 = call %struct.cgroup_root* @cgroup_root_from_kf(%struct.kernfs_root* %12)
  store %struct.cgroup_root* %13, %struct.cgroup_root** %10, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 %14, i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %24 = load %struct.cgroup_root*, %struct.cgroup_root** %10, align 8
  %25 = call %struct.cgroup* @current_cgns_cgroup_from_root(%struct.cgroup_root* %24)
  store %struct.cgroup* %25, %struct.cgroup** %11, align 8
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %27 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %28 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = call i32 @kernfs_path_from_node(%struct.kernfs_node* %26, i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PATH_MAX, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %48

40:                                               ; preds = %22
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @seq_escape(%struct.seq_file* %44, i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.cgroup_root* @cgroup_root_from_kf(%struct.kernfs_root*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cgroup* @current_cgns_cgroup_from_root(%struct.cgroup_root*) #1

declare dso_local i32 @kernfs_path_from_node(%struct.kernfs_node*, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @seq_escape(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
