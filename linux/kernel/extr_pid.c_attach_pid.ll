; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_attach_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_attach_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32* }
%struct.pid = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attach_pid(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pid*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.pid** @task_pid_ptr(%struct.task_struct* %6, i32 %7)
  %9 = load %struct.pid*, %struct.pid** %8, align 8
  store %struct.pid* %9, %struct.pid** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load %struct.pid*, %struct.pid** %5, align 8
  %17 = getelementptr inbounds %struct.pid, %struct.pid* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @hlist_add_head_rcu(i32* %15, i32* %21)
  ret void
}

declare dso_local %struct.pid** @task_pid_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
