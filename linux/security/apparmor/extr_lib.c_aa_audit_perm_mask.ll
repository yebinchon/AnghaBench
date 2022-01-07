; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_audit_perm_mask.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_audit_perm_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_audit_perm_mask(%struct.audit_buffer* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca %struct.audit_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca [33 x i8], align 16
  store %struct.audit_buffer* %0, %struct.audit_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %15 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @aa_perm_mask_to_str(i8* %24, i32 33, i8* %25, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %35 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  %36 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %43 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %23
  br label %45

45:                                               ; preds = %44, %20, %6
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8**, i8*** %11, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %55 = load i8**, i8*** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @aa_audit_perm_names(%struct.audit_buffer* %54, i8** %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %50, %45
  %61 = load %struct.audit_buffer*, %struct.audit_buffer** %7, align 8
  %62 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @aa_perm_mask_to_str(i8*, i32, i8*, i32) #1

declare dso_local i32 @aa_audit_perm_names(%struct.audit_buffer*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
