; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_iteration_check.c_iteration_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_iteration_check.c_iteration_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Running %siteration tests for %d seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"multiorder \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@max_order = common dso_local global i32 0, align 4
@test_complete = common dso_local global i32 0, align 4
@seeds = common dso_local global i32* null, align 8
@threads = common dso_local global i32* null, align 8
@tagged_iteration_fn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"create tagged iteration thread\00", align 1
@untagged_iteration_fn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"create untagged iteration thread\00", align 1
@add_entries_fn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"create add entry thread\00", align 1
@remove_entries_fn = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"create remove entry thread\00", align 1
@tag_entries_fn = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"create tag entry thread\00", align 1
@NUM_THREADS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@array = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iteration_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ugt i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @printv(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* @max_order, align 4
  store i32 0, i32* @test_complete, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %22, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = call i32 (...) @rand()
  %18 = load i32*, i32** @seeds, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load i32*, i32** @threads, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* @tagged_iteration_fn, align 4
  %29 = call i64 @pthread_create(i32* %27, i32* null, i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %25
  %35 = load i32*, i32** @threads, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* @untagged_iteration_fn, align 4
  %38 = call i64 @pthread_create(i32* %36, i32* null, i32 %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %34
  %44 = load i32*, i32** @threads, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* @add_entries_fn, align 4
  %47 = call i64 @pthread_create(i32* %45, i32* null, i32 %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %43
  %53 = load i32*, i32** @threads, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* @remove_entries_fn, align 4
  %56 = call i64 @pthread_create(i32* %54, i32* null, i32 %55, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %52
  %62 = load i32*, i32** @threads, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* @tag_entries_fn, align 4
  %65 = call i64 @pthread_create(i32* %63, i32* null, i32 %64, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @sleep(i32 %71)
  store i32 1, i32* @test_complete, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %89, %70
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @NUM_THREADS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i32*, i32** @threads, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @pthread_join(i32 %82, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %73

92:                                               ; preds = %73
  %93 = call i32 @item_kill_tree(i32* @array)
  ret void
}

declare dso_local i32 @printv(i32, i8*, i8*, i32) #1

declare dso_local i32 @rand(...) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @item_kill_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
