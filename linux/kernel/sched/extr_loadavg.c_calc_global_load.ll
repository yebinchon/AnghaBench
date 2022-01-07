; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_loadavg.c_calc_global_load.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_loadavg.c_calc_global_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calc_load_update = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@calc_load_tasks = common dso_local global i32 0, align 4
@FIXED_1 = common dso_local global i64 0, align 8
@avenrun = common dso_local global i32* null, align 8
@EXP_1 = common dso_local global i32 0, align 4
@EXP_5 = common dso_local global i32 0, align 4
@EXP_15 = common dso_local global i32 0, align 4
@LOAD_FREQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_global_load(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @calc_load_update, align 4
  %7 = call i64 @READ_ONCE(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %9, 10
  %11 = call i64 @time_before(i32 %8, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %62

14:                                               ; preds = %1
  %15 = call i64 (...) @calc_load_nohz_fold()
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @atomic_long_add(i64 %19, i32* @calc_load_tasks)
  br label %21

21:                                               ; preds = %18, %14
  %22 = call i64 @atomic_long_read(i32* @calc_load_tasks)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @FIXED_1, align 8
  %28 = mul nsw i64 %26, %27
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i64 [ %28, %25 ], [ 0, %29 ]
  store i64 %31, i64* %4, align 8
  %32 = load i32*, i32** @avenrun, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EXP_1, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @calc_load(i32 %34, i32 %35, i64 %36)
  %38 = load i32*, i32** @avenrun, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** @avenrun, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EXP_5, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @calc_load(i32 %42, i32 %43, i64 %44)
  %46 = load i32*, i32** @avenrun, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** @avenrun, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXP_15, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @calc_load(i32 %50, i32 %51, i64 %52)
  %54 = load i32*, i32** @avenrun, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @calc_load_update, align 4
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @LOAD_FREQ, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @WRITE_ONCE(i32 %56, i64 %59)
  %61 = call i32 (...) @calc_global_nohz()
  br label %62

62:                                               ; preds = %30, %13
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @calc_load_nohz_fold(...) #1

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @calc_load(i32, i32, i64) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @calc_global_nohz(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
