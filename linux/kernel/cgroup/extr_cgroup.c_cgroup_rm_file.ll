; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_rm_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_rm_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32, i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_file = type { i32, i32* }

@CGROUP_FILE_NAME_MAX = common dso_local global i32 0, align 4
@cgroup_mutex = common dso_local global i32 0, align 4
@cgroup_file_kn_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, %struct.cftype*)* @cgroup_rm_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_rm_file(%struct.cgroup* %0, %struct.cftype* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.cftype*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cgroup_subsys_state*, align 8
  %8 = alloca %struct.cgroup_file*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.cftype* %1, %struct.cftype** %4, align 8
  %9 = load i32, i32* @CGROUP_FILE_NAME_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %14 = load %struct.cftype*, %struct.cftype** %4, align 8
  %15 = getelementptr inbounds %struct.cftype, %struct.cftype* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %20 = load %struct.cftype*, %struct.cftype** %4, align 8
  %21 = getelementptr inbounds %struct.cftype, %struct.cftype* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup* %19, i32 %22)
  store %struct.cgroup_subsys_state* %23, %struct.cgroup_subsys_state** %7, align 8
  %24 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %7, align 8
  %25 = bitcast %struct.cgroup_subsys_state* %24 to i8*
  %26 = load %struct.cftype*, %struct.cftype** %4, align 8
  %27 = getelementptr inbounds %struct.cftype, %struct.cftype* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %25, i64 %29
  %31 = bitcast i8* %30 to %struct.cgroup_file*
  store %struct.cgroup_file* %31, %struct.cgroup_file** %8, align 8
  %32 = call i32 @spin_lock_irq(i32* @cgroup_file_kn_lock)
  %33 = load %struct.cgroup_file*, %struct.cgroup_file** %8, align 8
  %34 = getelementptr inbounds %struct.cgroup_file, %struct.cgroup_file* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = call i32 @spin_unlock_irq(i32* @cgroup_file_kn_lock)
  %36 = load %struct.cgroup_file*, %struct.cgroup_file** %8, align 8
  %37 = getelementptr inbounds %struct.cgroup_file, %struct.cgroup_file* %36, i32 0, i32 0
  %38 = call i32 @del_timer_sync(i32* %37)
  br label %39

39:                                               ; preds = %18, %2
  %40 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %41 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %44 = load %struct.cftype*, %struct.cftype** %4, align 8
  %45 = call i32 @cgroup_file_name(%struct.cgroup* %43, %struct.cftype* %44, i8* %12)
  %46 = call i32 @kernfs_remove_by_name(i32 %42, i32 %45)
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup*, i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @del_timer_sync(i32*) #2

declare dso_local i32 @kernfs_remove_by_name(i32, i32) #2

declare dso_local i32 @cgroup_file_name(%struct.cgroup*, %struct.cftype*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
