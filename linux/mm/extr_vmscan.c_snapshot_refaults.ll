; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_snapshot_refaults.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_snapshot_refaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { i64 }

@WORKINGSET_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32*)* @snapshot_refaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_refaults(%struct.mem_cgroup* %0, i32* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lruvec*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %9 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %8, %struct.mem_cgroup* null, i32* null)
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %5, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %13 = call %struct.lruvec* @mem_cgroup_lruvec(i32* %11, %struct.mem_cgroup* %12)
  store %struct.lruvec* %13, %struct.lruvec** %7, align 8
  %14 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  %15 = load i32, i32* @WORKINGSET_ACTIVATE, align 4
  %16 = call i64 @lruvec_page_state_local(%struct.lruvec* %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  %19 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %23 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %21, %struct.mem_cgroup* %22, i32* null)
  store %struct.mem_cgroup* %23, %struct.mem_cgroup** %5, align 8
  %24 = icmp ne %struct.mem_cgroup* %23, null
  br i1 %24, label %10, label %25

25:                                               ; preds = %20
  ret void
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup*, %struct.mem_cgroup*, i32*) #1

declare dso_local %struct.lruvec* @mem_cgroup_lruvec(i32*, %struct.mem_cgroup*) #1

declare dso_local i64 @lruvec_page_state_local(%struct.lruvec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
