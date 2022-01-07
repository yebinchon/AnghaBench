; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_set_loginuid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_set_loginuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.tty_struct = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_LOGIN = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pid=%d uid=%u\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c" old-auid=%u auid=%u tty=%s old-ses=%u ses=%u res=%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @audit_log_set_loginuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_log_set_loginuid(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.audit_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tty_struct*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @audit_enabled, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %65

19:                                               ; preds = %5
  %20 = call i32 (...) @audit_context()
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @AUDIT_LOGIN, align 4
  %23 = call %struct.audit_buffer* @audit_log_start(i32 %20, i32 %21, i32 %22)
  store %struct.audit_buffer* %23, %struct.audit_buffer** %11, align 8
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %25 = icmp ne %struct.audit_buffer* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %65

27:                                               ; preds = %19
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @task_uid(i32 %28)
  %30 = call i32 @from_kuid(i32* @init_user_ns, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @from_kuid(i32* @init_user_ns, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @from_kuid(i32* @init_user_ns, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = call %struct.tty_struct* (...) @audit_get_tty()
  store %struct.tty_struct* %35, %struct.tty_struct** %15, align 8
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %37 = load i32, i32* @current, align 4
  %38 = call i32 @task_tgid_nr(i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (%struct.audit_buffer*, i8*, i32, i32, ...) @audit_log_format(%struct.audit_buffer* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %42 = call i32 @audit_log_task_context(%struct.audit_buffer* %41)
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %47 = icmp ne %struct.tty_struct* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %50 = call i8* @tty_name(%struct.tty_struct* %49)
  br label %52

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i8* [ %50, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %51 ]
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 (%struct.audit_buffer*, i8*, i32, i32, ...) @audit_log_format(%struct.audit_buffer* %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i8* %53, i32 %54, i32 %55, i32 %59)
  %61 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  %62 = call i32 @audit_put_tty(%struct.tty_struct* %61)
  %63 = load %struct.audit_buffer*, %struct.audit_buffer** %11, align 8
  %64 = call i32 @audit_log_end(%struct.audit_buffer* %63)
  br label %65

65:                                               ; preds = %52, %26, %18
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @task_uid(i32) #1

declare dso_local %struct.tty_struct* @audit_get_tty(...) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32, i32, ...) #1

declare dso_local i32 @task_tgid_nr(i32) #1

declare dso_local i32 @audit_log_task_context(%struct.audit_buffer*) #1

declare dso_local i8* @tty_name(%struct.tty_struct*) #1

declare dso_local i32 @audit_put_tty(%struct.tty_struct*) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
