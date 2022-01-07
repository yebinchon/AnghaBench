; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_kill_orphaned_pgrp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_kill_orphaned_pgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.task_struct* }
%struct.pid = type { i32 }

@SIGHUP = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.task_struct*)* @kill_orphaned_pgrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_orphaned_pgrp(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pid*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call %struct.pid* @task_pgrp(%struct.task_struct* %7)
  store %struct.pid* %8, %struct.pid** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  store %struct.task_struct* %9, %struct.task_struct** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  store %struct.task_struct* %15, %struct.task_struct** %4, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.task_struct* null, %struct.task_struct** %6, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = call %struct.pid* @task_pgrp(%struct.task_struct* %18)
  %20 = load %struct.pid*, %struct.pid** %5, align 8
  %21 = icmp ne %struct.pid* %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = call i64 @task_session(%struct.task_struct* %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = call i64 @task_session(%struct.task_struct* %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.pid*, %struct.pid** %5, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = call i64 @will_become_orphaned_pgrp(%struct.pid* %29, %struct.task_struct* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.pid*, %struct.pid** %5, align 8
  %35 = call i64 @has_stopped_jobs(%struct.pid* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* @SIGHUP, align 4
  %39 = load i32, i32* @SEND_SIG_PRIV, align 4
  %40 = load %struct.pid*, %struct.pid** %5, align 8
  %41 = call i32 @__kill_pgrp_info(i32 %38, i32 %39, %struct.pid* %40)
  %42 = load i32, i32* @SIGCONT, align 4
  %43 = load i32, i32* @SEND_SIG_PRIV, align 4
  %44 = load %struct.pid*, %struct.pid** %5, align 8
  %45 = call i32 @__kill_pgrp_info(i32 %42, i32 %43, %struct.pid* %44)
  br label %46

46:                                               ; preds = %37, %33, %28, %22, %17
  ret void
}

declare dso_local %struct.pid* @task_pgrp(%struct.task_struct*) #1

declare dso_local i64 @task_session(%struct.task_struct*) #1

declare dso_local i64 @will_become_orphaned_pgrp(%struct.pid*, %struct.task_struct*) #1

declare dso_local i64 @has_stopped_jobs(%struct.pid*) #1

declare dso_local i32 @__kill_pgrp_info(i32, i32, %struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
