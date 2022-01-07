; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_log_rule_change.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_log_rule_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i32, i32 }
%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" op=%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" list=%d res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.audit_krule*, i32)* @audit_log_rule_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_log_rule_change(i8* %0, %struct.audit_krule* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.audit_krule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_buffer*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.audit_krule* %1, %struct.audit_krule** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @audit_enabled, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %42

11:                                               ; preds = %3
  %12 = call i32 (...) @audit_context()
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @AUDIT_CONFIG_CHANGE, align 4
  %15 = call %struct.audit_buffer* @audit_log_start(i32 %12, i32 %13, i32 %14)
  store %struct.audit_buffer* %15, %struct.audit_buffer** %7, align 8
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %17 = icmp ne %struct.audit_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %42

19:                                               ; preds = %11
  %20 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %21 = call i32 @audit_log_session_info(%struct.audit_buffer* %20)
  %22 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %23 = call i32 @audit_log_task_context(%struct.audit_buffer* %22)
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (%struct.audit_buffer*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %28 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %29 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @audit_log_key(%struct.audit_buffer* %27, i32 %30)
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %33 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %34 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.audit_buffer*, i8*, i8*, ...) @audit_log_format(%struct.audit_buffer* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %41 = call i32 @audit_log_end(%struct.audit_buffer* %40)
  br label %42

42:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @audit_log_session_info(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_task_context(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @audit_log_key(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
