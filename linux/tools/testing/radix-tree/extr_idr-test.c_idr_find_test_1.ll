; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_find_test_1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_find_test_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idr_throbber = common dso_local global i32 0, align 4
@find_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_find_test_1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @idr_throbber, align 4
  %11 = call i32 @pthread_create(i32* %5, i32* null, i32 %10, i32* %4)
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @xa_mk_value(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @idr_alloc(i32* @find_idr, i8* %13, i32 %14, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  br label %23

23:                                               ; preds = %31, %2
  store i32 0, i32* %7, align 4
  %24 = call i8* @idr_get_next(i32* @find_idr, i32* %7)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @xa_mk_value(i32 %26)
  %28 = icmp ne i8* %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = call i64 @time(i32* null)
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 11
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %23, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pthread_join(i32 %37, i32* null)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @idr_remove(i32* @find_idr, i32 %39)
  %41 = call i32 @idr_is_empty(i32* @find_idr)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  ret void
}

declare dso_local i64 @time(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @idr_alloc(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @xa_mk_value(i32) #1

declare dso_local i8* @idr_get_next(i32*, i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @idr_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
