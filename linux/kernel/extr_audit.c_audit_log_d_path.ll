; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_d_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_d_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.path = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"<no_memory>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<too_long>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_d_path(%struct.audit_buffer* %0, i8* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @audit_log_format(%struct.audit_buffer* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i64, i64* @PATH_MAX, align 8
  %17 = add nsw i64 %16, 11
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @kmalloc(i64 %17, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %26 = call i32 @audit_log_string(%struct.audit_buffer* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %46

27:                                               ; preds = %15
  %28 = load %struct.path*, %struct.path** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* @PATH_MAX, align 8
  %31 = add nsw i64 %30, 11
  %32 = call i8* @d_path(%struct.path* %28, i8* %29, i64 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %38 = call i32 @audit_log_string(%struct.audit_buffer* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %43

39:                                               ; preds = %27
  %40 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @kfree(i8* %44)
  br label %46

46:                                               ; preds = %43, %24
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @audit_log_string(%struct.audit_buffer*, i8*) #1

declare dso_local i8* @d_path(%struct.path*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
