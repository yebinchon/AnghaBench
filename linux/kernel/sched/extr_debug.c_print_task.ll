; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_print_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_print_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rq = type { %struct.task_struct* }
%struct.task_struct = type { %struct.TYPE_4__, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c">R\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%15s %5d %9Ld.%06ld %9Ld %5d \00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%9Ld.%06ld %9Ld.%06ld %9Ld.%06ld\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rq*, %struct.task_struct*)* @print_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_task(%struct.seq_file* %0, %struct.rq* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.rq* %1, %struct.rq** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.rq*, %struct.rq** %5, align 8
  %8 = getelementptr inbounds %struct.rq, %struct.rq* %7, i32 0, i32 0
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %11 = icmp eq %struct.task_struct* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = call i32 @task_state_to_char(%struct.task_struct* %17)
  %19 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %26 = call i32 @task_pid_nr(%struct.task_struct* %25)
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SPLIT_NS(i32 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %26, i32 %31, i64 %38, i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @schedstat_val_or_zero(i32 %48)
  %50 = call i32 @SPLIT_NS(i32 %49)
  %51 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SPLIT_NS(i32 %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @schedstat_val_or_zero(i32 %60)
  %62 = call i32 @SPLIT_NS(i32 %61)
  %63 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %55, i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @task_state_to_char(%struct.task_struct*) #1

declare dso_local i32 @task_pid_nr(%struct.task_struct*) #1

declare dso_local i32 @SPLIT_NS(i32) #1

declare dso_local i32 @schedstat_val_or_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
