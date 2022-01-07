; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup_pidlist_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup_pidlist_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { %struct.cgroup_pidlist* }
%struct.cgroup_pidlist = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cgroup_pidlist_destroy_wq = common dso_local global i32 0, align 4
@CGROUP_PIDLIST_DESTROY_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @cgroup_pidlist_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_pidlist_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca %struct.cgroup_pidlist*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %8, align 8
  store %struct.kernfs_open_file* %9, %struct.kernfs_open_file** %5, align 8
  %10 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %11 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %10, i32 0, i32 0
  %12 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %11, align 8
  store %struct.cgroup_pidlist* %12, %struct.cgroup_pidlist** %6, align 8
  %13 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %14 = icmp ne %struct.cgroup_pidlist* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @cgroup_pidlist_destroy_wq, align 4
  %17 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %18 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %17, i32 0, i32 0
  %19 = load i32, i32* @CGROUP_PIDLIST_DESTROY_DELAY, align 4
  %20 = call i32 @mod_delayed_work(i32 %16, i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call %struct.TYPE_4__* @seq_css(%struct.seq_file* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_4__* @seq_css(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
