; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_rename.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node*, %struct.cgroup* }
%struct.cgroup = type { i32 }

@KERNFS_DIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@cgroup_mutex = common dso_local global i32 0, align 4
@rename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)* @cgroup1_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup1_rename(%struct.kernfs_node* %0, %struct.kernfs_node* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %5, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %11 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %10, i32 0, i32 1
  %12 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  store %struct.cgroup* %12, %struct.cgroup** %8, align 8
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %14 = call i64 @kernfs_type(%struct.kernfs_node* %13)
  %15 = load i64, i64* @KERNFS_DIR, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOTDIR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %22 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %21, i32 0, i32 0
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %25 = icmp ne %struct.kernfs_node* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %20
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %31 = call i32 @kernfs_break_active_protection(%struct.kernfs_node* %30)
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %33 = call i32 @kernfs_break_active_protection(%struct.kernfs_node* %32)
  %34 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @kernfs_rename(%struct.kernfs_node* %35, %struct.kernfs_node* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @rename, align 4
  %43 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %44 = call i32 @TRACE_CGROUP_PATH(i32 %42, %struct.cgroup* %43)
  br label %45

45:                                               ; preds = %41, %29
  %46 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %48 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %47)
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %50 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %26, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_break_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_rename(%struct.kernfs_node*, %struct.kernfs_node*, i8*) #1

declare dso_local i32 @TRACE_CGROUP_PATH(i32, %struct.cgroup*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kernfs_unbreak_active_protection(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
