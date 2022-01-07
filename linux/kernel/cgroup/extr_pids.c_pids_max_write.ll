; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_max_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_max_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.pids_cgroup = type { i64 }

@PIDS_MAX_STR = common dso_local global i32 0, align 4
@PIDS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @pids_max_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pids_max_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgroup_subsys_state*, align 8
  %11 = alloca %struct.pids_cgroup*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %15 = call %struct.cgroup_subsys_state* @of_css(%struct.kernfs_open_file* %14)
  store %struct.cgroup_subsys_state* %15, %struct.cgroup_subsys_state** %10, align 8
  %16 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %10, align 8
  %17 = call %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state* %16)
  store %struct.pids_cgroup* %17, %struct.pids_cgroup** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strstrip(i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @PIDS_MAX_STR, align 4
  %22 = call i32 @strcmp(i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @PIDS_MAX, align 8
  store i64 %25, i64* %12, align 8
  br label %44

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @kstrtoll(i8* %27, i32 0, i64* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %26
  %34 = load i64, i64* %12, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @PIDS_MAX, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %50

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.pids_cgroup*, %struct.pids_cgroup** %11, align 8
  %47 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %40, %31
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.cgroup_subsys_state* @of_css(%struct.kernfs_open_file*) #1

declare dso_local %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
