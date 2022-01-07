; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c___unhash_process.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c___unhash_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, i32 }

@nr_threads = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@PIDTYPE_TGID = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@PIDTYPE_SID = common dso_local global i32 0, align 4
@process_counts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @__unhash_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unhash_process(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @nr_threads, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @nr_threads, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = load i32, i32* @PIDTYPE_PID, align 4
  %9 = call i32 @detach_pid(%struct.task_struct* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = load i32, i32* @PIDTYPE_TGID, align 4
  %15 = call i32 @detach_pid(%struct.task_struct* %13, i32 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = load i32, i32* @PIDTYPE_PGID, align 4
  %18 = call i32 @detach_pid(%struct.task_struct* %16, i32 %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = load i32, i32* @PIDTYPE_SID, align 4
  %21 = call i32 @detach_pid(%struct.task_struct* %19, i32 %20)
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 3
  %24 = call i32 @list_del_rcu(i32* %23)
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 2
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load i32, i32* @process_counts, align 4
  %29 = call i32 @__this_cpu_dec(i32 %28)
  br label %30

30:                                               ; preds = %12, %2
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %31, i32 0, i32 1
  %33 = call i32 @list_del_rcu(i32* %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = call i32 @list_del_rcu(i32* %35)
  ret void
}

declare dso_local i32 @detach_pid(%struct.task_struct*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
