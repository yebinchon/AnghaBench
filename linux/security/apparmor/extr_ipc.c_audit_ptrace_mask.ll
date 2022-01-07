; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_audit_ptrace_mask.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_audit_ptrace_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"readby\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tracedby\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i32)* @audit_ptrace_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_ptrace_mask(%struct.audit_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 129, label %6
    i32 128, label %9
    i32 131, label %12
    i32 130, label %15
  ]

6:                                                ; preds = %2
  %7 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %8 = call i32 @audit_log_string(%struct.audit_buffer* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %18

9:                                                ; preds = %2
  %10 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %11 = call i32 @audit_log_string(%struct.audit_buffer* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %14 = call i32 @audit_log_string(%struct.audit_buffer* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %17 = call i32 @audit_log_string(%struct.audit_buffer* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %2, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @audit_log_string(%struct.audit_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
