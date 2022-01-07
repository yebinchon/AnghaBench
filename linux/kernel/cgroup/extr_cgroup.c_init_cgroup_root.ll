; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_init_cgroup_root.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_init_cgroup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_fs_context = type { i64, i32, i32, i32, %struct.cgroup_root* }
%struct.cgroup_root = type { %struct.cgroup, i32, i32, i32, i32, i32, i32 }
%struct.cgroup = type { i32, %struct.cgroup_root* }

@PATH_MAX = common dso_local global i32 0, align 4
@MAX_CGROUP_ROOT_NAMELEN = common dso_local global i32 0, align 4
@CGRP_CPUSET_CLONE_CHILDREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_cgroup_root(%struct.cgroup_fs_context* %0) #0 {
  %2 = alloca %struct.cgroup_fs_context*, align 8
  %3 = alloca %struct.cgroup_root*, align 8
  %4 = alloca %struct.cgroup*, align 8
  store %struct.cgroup_fs_context* %0, %struct.cgroup_fs_context** %2, align 8
  %5 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %6 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %5, i32 0, i32 4
  %7 = load %struct.cgroup_root*, %struct.cgroup_root** %6, align 8
  store %struct.cgroup_root* %7, %struct.cgroup_root** %3, align 8
  %8 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %9 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %8, i32 0, i32 0
  store %struct.cgroup* %9, %struct.cgroup** %4, align 8
  %10 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %11 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %10, i32 0, i32 6
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %14 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %13, i32 0, i32 5
  %15 = call i32 @atomic_set(i32* %14, i32 1)
  %16 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %17 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %18 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %17, i32 0, i32 1
  store %struct.cgroup_root* %16, %struct.cgroup_root** %18, align 8
  %19 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %20 = call i32 @init_cgroup_housekeeping(%struct.cgroup* %19)
  %21 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %22 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %21, i32 0, i32 4
  %23 = call i32 @idr_init(i32* %22)
  %24 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %25 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %28 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %30 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %35 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %38 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PATH_MAX, align 4
  %41 = call i32 @strscpy(i32 %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %1
  %43 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %44 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %49 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %52 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MAX_CGROUP_ROOT_NAMELEN, align 4
  %55 = call i32 @strscpy(i32 %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %2, align 8
  %58 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @CGRP_CPUSET_CLONE_CHILDREN, align 4
  %63 = load %struct.cgroup_root*, %struct.cgroup_root** %3, align 8
  %64 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %62, i32* %65)
  br label %67

67:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_cgroup_housekeeping(%struct.cgroup*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
