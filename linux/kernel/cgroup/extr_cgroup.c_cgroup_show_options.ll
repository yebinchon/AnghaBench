; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }
%struct.kernfs_root = type { i32 }

@cgrp_dfl_root = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CGRP_ROOT_NS_DELEGATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c",nsdelegate\00", align 1
@CGRP_ROOT_MEMORY_LOCAL_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c",memory_localevents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.kernfs_root*)* @cgroup_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_show_options(%struct.seq_file* %0, %struct.kernfs_root* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.kernfs_root*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.kernfs_root* %1, %struct.kernfs_root** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %6 = load i32, i32* @CGRP_ROOT_NS_DELEGATE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = call i32 @seq_puts(%struct.seq_file* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %14 = load i32, i32* @CGRP_ROOT_MEMORY_LOCAL_EVENTS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = call i32 @seq_puts(%struct.seq_file* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
