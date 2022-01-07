; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_max_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_max_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.pids_cgroup = type { i64 }

@PIDS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PIDS_MAX_STR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pids_max_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pids_max_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.pids_cgroup*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call %struct.cgroup_subsys_state* @seq_css(%struct.seq_file* %8)
  store %struct.cgroup_subsys_state* %9, %struct.cgroup_subsys_state** %5, align 8
  %10 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %11 = call %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state* %10)
  store %struct.pids_cgroup* %11, %struct.pids_cgroup** %6, align 8
  %12 = load %struct.pids_cgroup*, %struct.pids_cgroup** %6, align 8
  %13 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @PIDS_MAX, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i64, i64* @PIDS_MAX_STR, align 8
  %21 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %22, %18
  ret i32 0
}

declare dso_local %struct.cgroup_subsys_state* @seq_css(%struct.seq_file*) #1

declare dso_local %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
