; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_xaudit.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_xaudit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.aa_ns = type { i32 }
%struct.aa_label = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"label print error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_label_xaudit(%struct.audit_buffer* %0, %struct.aa_ns* %1, %struct.aa_label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.audit_buffer*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %6, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %7, align 8
  store %struct.aa_label* %2, %struct.aa_label** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %14 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %15 = icmp ne %struct.audit_buffer* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %20 = icmp ne %struct.aa_label* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %25 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @use_label_hname(%struct.aa_ns* %24, %struct.aa_label* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %31 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @display_mode(%struct.aa_ns* %30, %struct.aa_label* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29, %5
  %36 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %37 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @aa_label_asxprint(i8** %12, %struct.aa_ns* %36, %struct.aa_label* %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %72

45:                                               ; preds = %35
  %46 = load i8*, i8** %12, align 8
  store i8* %46, i8** %11, align 8
  br label %54

47:                                               ; preds = %29
  %48 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %49 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @strlen(i8* %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %47, %45
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @audit_string_contains_control(i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @audit_log_n_hex(%struct.audit_buffer* %60, i8* %61, i32 %62)
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.audit_buffer*, %struct.audit_buffer** %6, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @audit_log_n_string(%struct.audit_buffer* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @kfree(i8* %70)
  br label %72

72:                                               ; preds = %69, %43
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @use_label_hname(%struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i64 @display_mode(%struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_label_asxprint(i8**, %struct.aa_ns*, %struct.aa_label*, i32, i32) #1

declare dso_local i32 @AA_DEBUG(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @audit_string_contains_control(i8*, i32) #1

declare dso_local i32 @audit_log_n_hex(%struct.audit_buffer*, i8*, i32) #1

declare dso_local i32 @audit_log_n_string(%struct.audit_buffer*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
