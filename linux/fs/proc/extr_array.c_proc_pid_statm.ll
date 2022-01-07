; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_proc_pid_statm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_proc_pid_statm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pid_statm(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.pid* %2, %struct.pid** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %16 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %15)
  store %struct.mm_struct* %16, %struct.mm_struct** %14, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %18 = icmp ne %struct.mm_struct* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %21 = call i64 @task_statm(%struct.mm_struct* %20, i64* %11, i64* %12, i64* %13, i64* %10)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %23 = call i32 @mmput(%struct.mm_struct* %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @seq_put_decimal_ull(%struct.seq_file* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @seq_put_decimal_ull(%struct.seq_file* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @seq_put_decimal_ull(%struct.seq_file* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @seq_put_decimal_ull(%struct.seq_file* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %38 = call i32 @seq_put_decimal_ull(%struct.seq_file* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %39 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @seq_put_decimal_ull(%struct.seq_file* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %43 = call i32 @seq_put_decimal_ull(%struct.seq_file* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %44 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %45 = call i32 @seq_putc(%struct.seq_file* %44, i8 signext 10)
  ret i32 0
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i64 @task_statm(%struct.mm_struct*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @seq_put_decimal_ull(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
