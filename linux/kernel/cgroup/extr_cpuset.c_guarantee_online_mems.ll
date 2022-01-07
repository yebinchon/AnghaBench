; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_guarantee_online_mems.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_guarantee_online_mems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }

@node_states = common dso_local global i32* null, align 8
@N_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*, i32*)* @guarantee_online_mems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guarantee_online_mems(%struct.cpuset* %0, i32* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca i32*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %5

5:                                                ; preds = %16, %2
  %6 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %7 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @node_states, align 8
  %10 = load i64, i64* @N_MEMORY, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nodes_intersects(i32 %8, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %18 = call %struct.cpuset* @parent_cs(%struct.cpuset* %17)
  store %struct.cpuset* %18, %struct.cpuset** %3, align 8
  br label %5

19:                                               ; preds = %5
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %23 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @node_states, align 8
  %26 = load i64, i64* @N_MEMORY, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nodes_and(i32 %21, i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @nodes_intersects(i32, i32) #1

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i32 @nodes_and(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
