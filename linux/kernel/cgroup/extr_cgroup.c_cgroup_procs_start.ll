; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cgroup = type { i32 }
%struct.TYPE_2__ = type { %struct.cgroup* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CSS_TASK_ITER_PROCS = common dso_local global i32 0, align 4
@CSS_TASK_ITER_THREADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @cgroup_procs_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cgroup_procs_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cgroup*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = call %struct.TYPE_2__* @seq_css(%struct.seq_file* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  store %struct.cgroup* %10, %struct.cgroup** %6, align 8
  %11 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %12 = call i64 @cgroup_is_threaded(%struct.cgroup* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %3, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @CSS_TASK_ITER_PROCS, align 4
  %22 = load i32, i32* @CSS_TASK_ITER_THREADED, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @__cgroup_procs_start(%struct.seq_file* %19, i32* %20, i32 %23)
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %18, %14
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local %struct.TYPE_2__* @seq_css(%struct.seq_file*) #1

declare dso_local i64 @cgroup_is_threaded(%struct.cgroup*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @__cgroup_procs_start(%struct.seq_file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
