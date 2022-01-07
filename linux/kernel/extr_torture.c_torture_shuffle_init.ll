; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shuffle_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_torture.c_torture_shuffle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shuffle_interval = common dso_local global i64 0, align 8
@shuffle_idle_cpu = common dso_local global i32 0, align 4
@shuffle_tmp_mask = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to alloc mask\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@torture_shuffle = common dso_local global i32 0, align 4
@shuffler_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @torture_shuffle_init(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* @shuffle_interval, align 8
  store i32 -1, i32* @shuffle_idle_cpu, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @alloc_cpumask_var(i32* @shuffle_tmp_mask, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i32 @VERBOSE_TOROUT_ERRSTRING(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @torture_shuffle, align 4
  %14 = load i32, i32* @shuffler_task, align 4
  %15 = call i32 @torture_create_kthread(i32 %13, i32* null, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @VERBOSE_TOROUT_ERRSTRING(i8*) #1

declare dso_local i32 @torture_create_kthread(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
