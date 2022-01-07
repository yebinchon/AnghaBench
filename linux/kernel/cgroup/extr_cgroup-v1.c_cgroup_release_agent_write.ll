; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup_release_agent_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup_release_agent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.cgroup = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@release_agent_path_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @cgroup_release_agent_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cgroup_release_agent_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgroup*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 4, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %17 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cgroup* @cgroup_kn_lock_live(i32 %18, i32 0)
  store %struct.cgroup* %19, %struct.cgroup** %10, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %10, align 8
  %21 = icmp ne %struct.cgroup* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* @ENODEV, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %41

25:                                               ; preds = %4
  %26 = call i32 @spin_lock(i32* @release_agent_path_lock)
  %27 = load %struct.cgroup*, %struct.cgroup** %10, align 8
  %28 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strstrip(i8* %32)
  %34 = call i32 @strlcpy(i32 %31, i32 %33, i32 4)
  %35 = call i32 @spin_unlock(i32* @release_agent_path_lock)
  %36 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %37 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cgroup_kn_unlock(i32 %38)
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %25, %22
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.cgroup* @cgroup_kn_lock_live(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
