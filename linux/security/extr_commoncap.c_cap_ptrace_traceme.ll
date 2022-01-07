; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_ptrace_traceme.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_ptrace_traceme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i64, i32 }

@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_ptrace_traceme(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = call %struct.cred* @__task_cred(%struct.task_struct* %7)
  store %struct.cred* %8, %struct.cred** %4, align 8
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %5, align 8
  %10 = load %struct.cred*, %struct.cred** %4, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cred*, %struct.cred** %5, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.cred*, %struct.cred** %5, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cred*, %struct.cred** %4, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @cap_issubset(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %39

27:                                               ; preds = %17, %1
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = load %struct.cred*, %struct.cred** %5, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %33 = call i64 @has_ns_capability(%struct.task_struct* %28, i64 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %35, %26
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @cap_issubset(i32, i32) #1

declare dso_local i64 @has_ns_capability(%struct.task_struct*, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
