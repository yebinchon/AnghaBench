; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression4.c_regression4_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_regression4.c_regression4_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"regression test 4 starting\0A\00", align 1
@mt_tree = common dso_local global i32 0, align 4
@obj0 = common dso_local global i32 0, align 4
@worker_barrier = common dso_local global i32 0, align 4
@reader_fn = common dso_local global i32 0, align 4
@writer_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"regression test 4 passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regression4_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @printv(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @radix_tree_insert(i32* @mt_tree, i32 0, i32* @obj0)
  %5 = call i32 @pthread_barrier_init(i32* @worker_barrier, i32* null, i32 2)
  %6 = load i32, i32* @reader_fn, align 4
  %7 = call i64 @pthread_create(i32* %1, i32* null, i32 %6, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @writer_fn, align 4
  %11 = call i64 @pthread_create(i32* %2, i32* null, i32 %10, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %0
  %14 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @pthread_join(i32 %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @pthread_join(i32 %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %16
  %25 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %20
  %28 = call i32 @printv(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printv(i32, i8*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, i32*) #1

declare dso_local i32 @pthread_barrier_init(i32*, i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @pthread_join(i32, i32*) #1

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
