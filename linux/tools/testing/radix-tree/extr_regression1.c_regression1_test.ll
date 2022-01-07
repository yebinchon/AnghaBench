; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression1.c_regression1_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression1.c_regression1_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"running regression test 1, should finish in under a minute\0A\00", align 1
@worker_barrier = common dso_local global i32 0, align 4
@threads = common dso_local global i32* null, align 8
@regression1_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"regression test 1, done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regression1_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 @printv(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @pthread_barrier_init(i32* @worker_barrier, i32* null, i32 %5)
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i32* @malloc(i32 %10)
  store i32* %11, i32** @threads, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %32, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %3, align 8
  %19 = load i32*, i32** @threads, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* @regression1_fn, align 4
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i64 @pthread_create(i32* %22, i32* null, i32 %23, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %12

35:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32*, i32** @threads, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pthread_join(i32 %45, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32*, i32** @threads, align 8
  %57 = call i32 @free(i32* %56)
  %58 = call i32 @printv(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printv(i32, i8*) #1

declare dso_local i32 @pthread_barrier_init(i32*, i32*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

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
