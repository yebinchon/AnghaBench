; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_process.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i64, %struct.pid_namespace* }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acct_process() #0 {
  %1 = alloca %struct.pid_namespace*, align 8
  %2 = load i32, i32* @current, align 4
  %3 = call %struct.pid_namespace* @task_active_pid_ns(i32 %2)
  store %struct.pid_namespace* %3, %struct.pid_namespace** %1, align 8
  br label %4

4:                                                ; preds = %14, %0
  %5 = load %struct.pid_namespace*, %struct.pid_namespace** %1, align 8
  %6 = icmp ne %struct.pid_namespace* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.pid_namespace*, %struct.pid_namespace** %1, align 8
  %9 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %18

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.pid_namespace*, %struct.pid_namespace** %1, align 8
  %16 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %15, i32 0, i32 1
  %17 = load %struct.pid_namespace*, %struct.pid_namespace** %16, align 8
  store %struct.pid_namespace* %17, %struct.pid_namespace** %1, align 8
  br label %4

18:                                               ; preds = %12, %4
  %19 = load %struct.pid_namespace*, %struct.pid_namespace** %1, align 8
  %20 = call i64 @unlikely(%struct.pid_namespace* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.pid_namespace*, %struct.pid_namespace** %1, align 8
  %24 = call i32 @slow_acct_process(%struct.pid_namespace* %23)
  br label %25

25:                                               ; preds = %22, %18
  ret void
}

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local i64 @unlikely(%struct.pid_namespace*) #1

declare dso_local i32 @slow_acct_process(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
