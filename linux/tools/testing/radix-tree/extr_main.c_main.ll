; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"ls:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@test_verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"random seed %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"running tests\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"after rcu_barrier: %d allocated, preempt %d\0A\00", align 1
@nr_allocated = common dso_local global i32 0, align 4
@preempt_count = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"tests completed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 @time(i32* null)
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 108
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %33

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 115
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @strtoul(i32 %23, i32* null, i32 0)
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 118
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @test_verbose, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @test_verbose, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %18
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @srand(i32 %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (...) @rcu_register_thread()
  %41 = call i32 (...) @radix_tree_init()
  %42 = call i32 (...) @xarray_tests()
  %43 = call i32 (...) @regression1_test()
  %44 = call i32 (...) @regression2_test()
  %45 = call i32 (...) @regression3_test()
  %46 = call i32 (...) @regression4_test()
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 90, %47
  %49 = add nsw i32 10, %48
  %50 = call i32 @iteration_test(i32 0, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 90, %51
  %53 = add nsw i32 10, %52
  %54 = call i32 @iteration_test(i32 7, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @single_thread_tests(i32 %55)
  %57 = call i32 @radix_tree_cpu_dead(i32 0)
  %58 = call i32 (...) @benchmark()
  %59 = call i32 (...) @rcu_barrier()
  %60 = load i32, i32* @nr_allocated, align 4
  %61 = load i32, i32* @preempt_count, align 4
  %62 = call i32 @printv(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61)
  %63 = call i32 (...) @rcu_unregister_thread()
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @rcu_register_thread(...) #1

declare dso_local i32 @radix_tree_init(...) #1

declare dso_local i32 @xarray_tests(...) #1

declare dso_local i32 @regression1_test(...) #1

declare dso_local i32 @regression2_test(...) #1

declare dso_local i32 @regression3_test(...) #1

declare dso_local i32 @regression4_test(...) #1

declare dso_local i32 @iteration_test(i32, i32) #1

declare dso_local i32 @single_thread_tests(i32) #1

declare dso_local i32 @radix_tree_cpu_dead(i32) #1

declare dso_local i32 @benchmark(...) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @printv(i32, i8*, i32, i32) #1

declare dso_local i32 @rcu_unregister_thread(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
