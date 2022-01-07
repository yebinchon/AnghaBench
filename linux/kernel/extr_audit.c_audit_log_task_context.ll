; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_task_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" subj=%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error in audit_log_task_context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_log_task_context(%struct.audit_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @security_task_getsecid(i32 %8, i32* %7)
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @security_secid_to_secctx(i32 %14, i8** %4, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %35

25:                                               ; preds = %13
  %26 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @audit_log_format(%struct.audit_buffer* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @security_release_secctx(i8* %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %35

32:                                               ; preds = %23
  %33 = call i32 @audit_panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %25, %24, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @security_task_getsecid(i32, i32*) #1

declare dso_local i32 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

declare dso_local i32 @audit_panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
