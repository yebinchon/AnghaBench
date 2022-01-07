; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_ftrace_create_function_files.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions.c_ftrace_create_function_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, i32 }
%struct.dentry = type { i32 }

@TRACE_ARRAY_FL_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftrace_create_function_files(%struct.trace_array* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %8 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRACE_ARRAY_FL_GLOBAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %16 = call i32 @allocate_ftrace_ops(%struct.trace_array* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %23 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @ftrace_create_filter_files(i32 %24, %struct.dentry* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %19, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @allocate_ftrace_ops(%struct.trace_array*) #1

declare dso_local i32 @ftrace_create_filter_files(i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
