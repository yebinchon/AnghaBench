; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_flags_seq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_flags_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.trace_print_flags = type { i8*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trace_print_flags_seq(%struct.trace_seq* %0, i8* %1, i64 %2, %struct.trace_print_flags* %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.trace_print_flags*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.trace_print_flags* %3, %struct.trace_print_flags** %8, align 8
  %14 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %15 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %14)
  store i8* %15, i8** %11, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %67, %4
  %17 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %17, i64 %19
  %21 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi i1 [ false, %16 ], [ %26, %24 ]
  br i1 %28, label %29, label %70

29:                                               ; preds = %27
  %30 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %30, i64 %32
  %34 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %67

42:                                               ; preds = %29
  %43 = load %struct.trace_print_flags*, %struct.trace_print_flags** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %43, i64 %45
  %47 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %7, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %42
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @trace_seq_puts(%struct.trace_seq* %59, i8* %60)
  br label %63

62:                                               ; preds = %55, %42
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @trace_seq_puts(%struct.trace_seq* %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %41
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %16

70:                                               ; preds = %27
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @trace_seq_puts(%struct.trace_seq* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %76, %73
  %84 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @trace_seq_printf(%struct.trace_seq* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %83, %70
  %88 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %89 = call i32 @trace_seq_putc(%struct.trace_seq* %88, i32 0)
  %90 = load i8*, i8** %11, align 8
  ret i8* %90
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
