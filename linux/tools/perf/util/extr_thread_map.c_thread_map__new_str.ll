; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__new_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__new_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_thread_map* @thread_map__new_str(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.perf_thread_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.perf_thread_map* @thread_map__new_by_pid_str(i8* %13)
  store %struct.perf_thread_map* %14, %struct.perf_thread_map** %5, align 8
  br label %33

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @UINT_MAX, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.perf_thread_map* @thread_map__new_by_uid(i64 %23)
  store %struct.perf_thread_map* %24, %struct.perf_thread_map** %5, align 8
  br label %33

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call %struct.perf_thread_map* (...) @thread_map__new_all_cpus()
  store %struct.perf_thread_map* %29, %struct.perf_thread_map** %5, align 8
  br label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call %struct.perf_thread_map* @thread_map__new_by_tid_str(i8* %31)
  store %struct.perf_thread_map* %32, %struct.perf_thread_map** %5, align 8
  br label %33

33:                                               ; preds = %30, %28, %22, %12
  %34 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  ret %struct.perf_thread_map* %34
}

declare dso_local %struct.perf_thread_map* @thread_map__new_by_pid_str(i8*) #1

declare dso_local %struct.perf_thread_map* @thread_map__new_by_uid(i64) #1

declare dso_local %struct.perf_thread_map* @thread_map__new_all_cpus(...) #1

declare dso_local %struct.perf_thread_map* @thread_map__new_by_tid_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
