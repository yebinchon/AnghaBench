; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_ksys_setsid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_ksys_setsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pid = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksys_setsid() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca %struct.pid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  store %struct.task_struct* %7, %struct.task_struct** %1, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %9 = call %struct.pid* @task_pid(%struct.task_struct* %8)
  store %struct.pid* %9, %struct.pid** %2, align 8
  %10 = load %struct.pid*, %struct.pid** %2, align 8
  %11 = call i32 @pid_vnr(%struct.pid* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %15 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %38

22:                                               ; preds = %0
  %23 = load %struct.pid*, %struct.pid** %2, align 8
  %24 = load i32, i32* @PIDTYPE_PGID, align 4
  %25 = call i64 @pid_task(%struct.pid* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %38

28:                                               ; preds = %22
  %29 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.pid*, %struct.pid** %2, align 8
  %34 = call i32 @set_special_pids(%struct.pid* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %36 = call i32 @proc_clear_tty(%struct.task_struct* %35)
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %27, %21
  %39 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %44 = call i32 @proc_sid_connector(%struct.task_struct* %43)
  %45 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %46 = call i32 @sched_autogroup_create_attach(%struct.task_struct* %45)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.pid* @task_pid(%struct.task_struct*) #1

declare dso_local i32 @pid_vnr(%struct.pid*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i64 @pid_task(%struct.pid*, i32) #1

declare dso_local i32 @set_special_pids(%struct.pid*) #1

declare dso_local i32 @proc_clear_tty(%struct.task_struct*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @proc_sid_connector(%struct.task_struct*) #1

declare dso_local i32 @sched_autogroup_create_attach(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
