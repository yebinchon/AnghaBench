; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_user_stack_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_user_stack_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_array* }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i32 }
%struct.trace_event = type { i32 }
%struct.userstack_entry = type { i64*, i32 }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"<user stack trace>\0A\00", align 1
@TRACE_ITER_SYM_USEROBJ = common dso_local global i32 0, align 4
@FTRACE_STACK_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* @trace_user_stack_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_user_stack_print(%struct.trace_iterator* %0, i32 %1, %struct.trace_event* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca %struct.userstack_entry*, align 8
  %9 = alloca %struct.trace_seq*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i64, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trace_event* %2, %struct.trace_event** %6, align 8
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 2
  %16 = load %struct.trace_array*, %struct.trace_array** %15, align 8
  store %struct.trace_array* %16, %struct.trace_array** %7, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 1
  store %struct.trace_seq* %18, %struct.trace_seq** %9, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %10, align 8
  %19 = load %struct.userstack_entry*, %struct.userstack_entry** %8, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @trace_assign_type(%struct.userstack_entry* %19, i32 %22)
  %24 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %25 = call i32 @trace_seq_puts(%struct.trace_seq* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %27 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TRACE_ITER_SYM_USEROBJ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = call i32 (...) @rcu_read_lock()
  %34 = load %struct.userstack_entry*, %struct.userstack_entry** %8, align 8
  %35 = getelementptr inbounds %struct.userstack_entry, %struct.userstack_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.task_struct* @find_task_by_vpid(i32 %36)
  store %struct.task_struct* %37, %struct.task_struct** %12, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %39 = icmp ne %struct.task_struct* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %42 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %41)
  store %struct.mm_struct* %42, %struct.mm_struct** %10, align 8
  br label %43

43:                                               ; preds = %40, %32
  %44 = call i32 (...) @rcu_read_unlock()
  br label %45

45:                                               ; preds = %43, %3
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FTRACE_STACK_ENTRIES, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load %struct.userstack_entry*, %struct.userstack_entry** %8, align 8
  %52 = getelementptr inbounds %struct.userstack_entry, %struct.userstack_entry* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %62 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %50
  br label %78

65:                                               ; preds = %60
  %66 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %67 = call i32 @trace_seq_puts(%struct.trace_seq* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %69 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @seq_print_user_ip(%struct.trace_seq* %68, %struct.mm_struct* %69, i64 %70, i32 %71)
  %73 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %74 = call i32 @trace_seq_putc(%struct.trace_seq* %73, i8 signext 10)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %46

78:                                               ; preds = %64, %46
  %79 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %80 = icmp ne %struct.mm_struct* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %83 = call i32 @mmput(%struct.mm_struct* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %86 = call i32 @trace_handle_return(%struct.trace_seq* %85)
  ret i32 %86
}

declare dso_local i32 @trace_assign_type(%struct.userstack_entry*, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local i32 @seq_print_user_ip(%struct.trace_seq*, %struct.mm_struct*, i64, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
