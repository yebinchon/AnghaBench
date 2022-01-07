; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_session_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_session_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@current = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"auid=%u ses=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_session_info(%struct.audit_buffer* %0) #0 {
  %2 = alloca %struct.audit_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %2, align 8
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @audit_get_sessionid(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @audit_get_loginuid(i32 %7)
  %9 = call i32 @from_kuid(i32* @init_user_ns, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.audit_buffer*, %struct.audit_buffer** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @audit_log_format(%struct.audit_buffer* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @audit_get_sessionid(i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @audit_get_loginuid(i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
