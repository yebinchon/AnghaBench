; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_array_seq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_array_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s0x%x\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s0x%llx\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"BAD SIZE:%zu 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trace_print_array_seq(%struct.trace_seq* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %14 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %13)
  store i8* %14, i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %8, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %21 = call i32 @trace_seq_putc(%struct.trace_seq* %20, i8 signext 123)
  br label %22

22:                                               ; preds = %65, %4
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr i8, i8* %24, i64 %25
  %27 = icmp ult i8* %23, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  switch i64 %29, label %58 [
    i64 1, label %30
    i64 2, label %37
    i64 4, label %44
    i64 8, label %51
  ]

30:                                               ; preds = %28
  %31 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %35)
  br label %65

37:                                               ; preds = %28
  %38 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %42)
  br label %65

44:                                               ; preds = %28
  %45 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %49)
  br label %65

51:                                               ; preds = %28
  %52 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %56)
  br label %65

58:                                               ; preds = %28
  %59 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %60, i32 %63)
  store i64 1, i64* %8, align 8
  br label %65

65:                                               ; preds = %58, %51, %44, %37, %30
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr i8, i8* %67, i64 %66
  store i8* %68, i8** %11, align 8
  br label %22

69:                                               ; preds = %22
  %70 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %71 = call i32 @trace_seq_putc(%struct.trace_seq* %70, i8 signext 125)
  %72 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %73 = call i32 @trace_seq_putc(%struct.trace_seq* %72, i8 signext 0)
  %74 = load i8*, i8** %9, align 8
  ret i8* %74
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
