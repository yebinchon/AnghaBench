; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_oom_score.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_oom_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

@total_swap_pages = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_oom_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_oom_score(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.pid* %2, %struct.pid** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %11 = call i64 (...) @totalram_pages()
  %12 = load i64, i64* @total_swap_pages, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @oom_badness(%struct.task_struct* %14, i64 %15)
  %17 = mul nsw i32 %16, 1000
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %9, align 8
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %10, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %22)
  ret i32 0
}

declare dso_local i64 @totalram_pages(...) #1

declare dso_local i32 @oom_badness(%struct.task_struct*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
