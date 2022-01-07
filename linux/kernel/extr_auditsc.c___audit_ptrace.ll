; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_ptrace.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.audit_context = type { i32, i32, i32, i32, i32, i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_ptrace(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.audit_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %4, %struct.audit_context** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i32 @task_tgid_nr(%struct.task_struct* %5)
  %7 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %8 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = call i32 @audit_get_loginuid(%struct.task_struct* %9)
  %11 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %12 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = call i32 @task_uid(%struct.task_struct* %13)
  %15 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %16 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i32 @audit_get_sessionid(%struct.task_struct* %17)
  %19 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %20 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %23 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %22, i32 0, i32 1
  %24 = call i32 @security_task_getsecid(%struct.task_struct* %21, i32* %23)
  %25 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %26 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TASK_COMM_LEN, align 4
  %32 = call i32 @memcpy(i32 %27, i32 %30, i32 %31)
  ret void
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i32 @task_tgid_nr(%struct.task_struct*) #1

declare dso_local i32 @audit_get_loginuid(%struct.task_struct*) #1

declare dso_local i32 @task_uid(%struct.task_struct*) #1

declare dso_local i32 @audit_get_sessionid(%struct.task_struct*) #1

declare dso_local i32 @security_task_getsecid(%struct.task_struct*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
