; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { %struct.css_task_iter* }
%struct.css_task_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @cgroup_procs_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cgroup_procs_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kernfs_open_file*, align 8
  %8 = alloca %struct.css_task_iter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %10, align 8
  store %struct.kernfs_open_file* %11, %struct.kernfs_open_file** %7, align 8
  %12 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %13 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %12, i32 0, i32 0
  %14 = load %struct.css_task_iter*, %struct.css_task_iter** %13, align 8
  store %struct.css_task_iter* %14, %struct.css_task_iter** %8, align 8
  %15 = load %struct.css_task_iter*, %struct.css_task_iter** %8, align 8
  %16 = call i8* @css_task_iter_next(%struct.css_task_iter* %15)
  ret i8* %16
}

declare dso_local i8* @css_task_iter_next(%struct.css_task_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
