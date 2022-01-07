; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_single_thread_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_single_thread_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"starting single_thread_tests: %d allocated, preempt %d\0A\00", align 1
@nr_allocated = common dso_local global i32 0, align 4
@preempt_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"after multiorder_check: %d allocated, preempt %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"after tag_check: %d allocated, preempt %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"after gang_check: %d allocated, preempt %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"after add_and_check: %d allocated, preempt %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"after dynamic_height_check: %d allocated, preempt %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"after idr_checks: %d allocated, preempt %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"after big_gang_check: %d allocated, preempt %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"after copy_tag_check: %d allocated, preempt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @single_thread_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_thread_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @nr_allocated, align 4
  %5 = load i32, i32* @preempt_count, align 4
  %6 = call i32 (i32, i8*, i32, ...) @printv(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  %7 = call i32 (...) @multiorder_checks()
  %8 = call i32 (...) @rcu_barrier()
  %9 = load i32, i32* @nr_allocated, align 4
  %10 = load i32, i32* @preempt_count, align 4
  %11 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10)
  %12 = call i32 (...) @tag_check()
  %13 = call i32 (...) @rcu_barrier()
  %14 = load i32, i32* @nr_allocated, align 4
  %15 = load i32, i32* @preempt_count, align 4
  %16 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15)
  %17 = call i32 (...) @gang_check()
  %18 = call i32 (...) @rcu_barrier()
  %19 = load i32, i32* @nr_allocated, align 4
  %20 = load i32, i32* @preempt_count, align 4
  %21 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %20)
  %22 = call i32 (...) @add_and_check()
  %23 = call i32 (...) @rcu_barrier()
  %24 = load i32, i32* @nr_allocated, align 4
  %25 = load i32, i32* @preempt_count, align 4
  %26 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %25)
  %27 = call i32 (...) @dynamic_height_check()
  %28 = call i32 (...) @rcu_barrier()
  %29 = load i32, i32* @nr_allocated, align 4
  %30 = load i32, i32* @preempt_count, align 4
  %31 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %29, i32 %30)
  %32 = call i32 (...) @idr_checks()
  %33 = call i32 (...) @ida_tests()
  %34 = call i32 (...) @rcu_barrier()
  %35 = load i32, i32* @nr_allocated, align 4
  %36 = load i32, i32* @preempt_count, align 4
  %37 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @big_gang_check(i32 %38)
  %40 = call i32 (...) @rcu_barrier()
  %41 = load i32, i32* @nr_allocated, align 4
  %42 = load i32, i32* @preempt_count, align 4
  %43 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %57, %1
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2000, i32 3
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = call i32 (...) @copy_tag_check()
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @fflush(i32 %55)
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %44

60:                                               ; preds = %44
  %61 = call i32 (...) @rcu_barrier()
  %62 = load i32, i32* @nr_allocated, align 4
  %63 = load i32, i32* @preempt_count, align 4
  %64 = call i32 (i32, i8*, i32, ...) @printv(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @printv(i32, i8*, i32, ...) #1

declare dso_local i32 @multiorder_checks(...) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @tag_check(...) #1

declare dso_local i32 @gang_check(...) #1

declare dso_local i32 @add_and_check(...) #1

declare dso_local i32 @dynamic_height_check(...) #1

declare dso_local i32 @idr_checks(...) #1

declare dso_local i32 @ida_tests(...) #1

declare dso_local i32 @big_gang_check(i32) #1

declare dso_local i32 @copy_tag_check(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
