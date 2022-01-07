; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpuacct.c_cpuacct_charge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpuacct.c_cpuacct_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cpuacct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32* }

@CPUACCT_STAT_SYSTEM = common dso_local global i32 0, align 4
@CPUACCT_STAT_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuacct_charge(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cpuacct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @CPUACCT_STAT_SYSTEM, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %9)
  store %struct.pt_regs* %10, %struct.pt_regs** %7, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %12 = icmp ne %struct.pt_regs* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %15 = call i64 @user_mode(%struct.pt_regs* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @CPUACCT_STAT_USER, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %13, %2
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call %struct.cpuacct* @task_ca(%struct.task_struct* %21)
  store %struct.cpuacct* %22, %struct.cpuacct** %5, align 8
  br label %23

23:                                               ; preds = %41, %19
  %24 = load %struct.cpuacct*, %struct.cpuacct** %5, align 8
  %25 = icmp ne %struct.cpuacct* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.cpuacct*, %struct.cpuacct** %5, align 8
  %29 = getelementptr inbounds %struct.cpuacct, %struct.cpuacct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_2__* @this_cpu_ptr(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %27
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  br label %41

41:                                               ; preds = %26
  %42 = load %struct.cpuacct*, %struct.cpuacct** %5, align 8
  %43 = call %struct.cpuacct* @parent_ca(%struct.cpuacct* %42)
  store %struct.cpuacct* %43, %struct.cpuacct** %5, align 8
  br label %23

44:                                               ; preds = %23
  %45 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cpuacct* @task_ca(%struct.task_struct*) #1

declare dso_local %struct.TYPE_2__* @this_cpu_ptr(i32) #1

declare dso_local %struct.cpuacct* @parent_ca(%struct.cpuacct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
