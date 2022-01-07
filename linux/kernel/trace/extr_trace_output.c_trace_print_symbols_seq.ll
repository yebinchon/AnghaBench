; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_symbols_seq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_symbols_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.trace_print_flags = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trace_print_symbols_seq(%struct.trace_seq* %0, i64 %1, %struct.trace_print_flags* %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.trace_print_flags*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.trace_print_flags* %2, %struct.trace_print_flags** %6, align 8
  %9 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %10 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %9)
  store i8* %10, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %3
  %12 = load %struct.trace_print_flags*, %struct.trace_print_flags** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %12, i64 %14
  %16 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.trace_print_flags*, %struct.trace_print_flags** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %21, i64 %23
  %25 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %31 = load %struct.trace_print_flags*, %struct.trace_print_flags** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %31, i64 %33
  %35 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @trace_seq_puts(%struct.trace_seq* %30, i64 %36)
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11

41:                                               ; preds = %29, %11
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %44 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %43)
  %45 = icmp eq i8* %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @trace_seq_printf(%struct.trace_seq* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %52 = call i32 @trace_seq_putc(%struct.trace_seq* %51, i32 0)
  %53 = load i8*, i8** %8, align 8
  ret i8* %53
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
