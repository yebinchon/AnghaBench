; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_stack_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_stack_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i64, i64, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 }
%struct.stack_entry = type { i64* }

@.str = private unnamed_addr constant [15 x i8] c"<stack trace>\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* @trace_stack_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_stack_print(%struct.trace_iterator* %0, i32 %1, %struct.trace_event* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca %struct.stack_entry*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trace_event* %2, %struct.trace_event** %6, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 2
  store %struct.trace_seq* %12, %struct.trace_seq** %8, align 8
  %13 = load %struct.stack_entry*, %struct.stack_entry** %7, align 8
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @trace_assign_type(%struct.stack_entry* %13, i64 %16)
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %10, align 8
  %26 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %27 = call i32 @trace_seq_puts(%struct.trace_seq* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.stack_entry*, %struct.stack_entry** %7, align 8
  %29 = getelementptr inbounds %struct.stack_entry, %struct.stack_entry* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %9, align 8
  br label %31

31:                                               ; preds = %60, %3
  %32 = load i64*, i64** %9, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64*, i64** %9, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = icmp ult i64* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ULONG_MAX, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %38, %34, %31
  %44 = phi i1 [ false, %34 ], [ false, %31 ], [ %42, %38 ]
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %47 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %63

50:                                               ; preds = %45
  %51 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %52 = call i32 @trace_seq_puts(%struct.trace_seq* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @seq_print_ip_sym(%struct.trace_seq* %53, i64 %55, i32 %56)
  %58 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %59 = call i32 @trace_seq_putc(%struct.trace_seq* %58, i8 signext 10)
  br label %60

60:                                               ; preds = %50
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %9, align 8
  br label %31

63:                                               ; preds = %49, %43
  %64 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %65 = call i32 @trace_handle_return(%struct.trace_seq* %64)
  ret i32 %65
}

declare dso_local i32 @trace_assign_type(%struct.stack_entry*, i64) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local i32 @seq_print_ip_sym(%struct.trace_seq*, i64, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
