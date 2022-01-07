; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_xarray.c_xarray_checks.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_xarray.c_xarray_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = common dso_local global i32 0, align 4
@xa0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XArray: %u of %u tests passed\0A\00", align 1
@tests_passed = common dso_local global i64 0, align 8
@tests_run = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xarray_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xarray_checks() #0 {
  %1 = call i32 @check_xa_err(i32* @array)
  %2 = call i32 @check_xas_retry(i32* @array)
  %3 = call i32 @check_xa_load(i32* @array)
  %4 = call i32 @check_xa_mark(i32* @array)
  %5 = call i32 @check_xa_shrink(i32* @array)
  %6 = call i32 @check_xas_erase(i32* @array)
  %7 = call i32 @check_insert(i32* @array)
  %8 = call i32 @check_cmpxchg(i32* @array)
  %9 = call i32 @check_reserve(i32* @array)
  %10 = call i32 @check_reserve(i32* @xa0)
  %11 = call i32 @check_multi_store(i32* @array)
  %12 = call i32 (...) @check_xa_alloc()
  %13 = call i32 @check_find(i32* @array)
  %14 = call i32 @check_find_entry(i32* @array)
  %15 = call i32 @check_account(i32* @array)
  %16 = call i32 @check_destroy(i32* @array)
  %17 = call i32 @check_move(i32* @array)
  %18 = call i32 @check_create_range(i32* @array)
  %19 = call i32 @check_store_range(i32* @array)
  %20 = call i32 @check_store_iter(i32* @array)
  %21 = call i32 @check_align(i32* @xa0)
  %22 = call i32 @check_workingset(i32* @array, i32 0)
  %23 = call i32 @check_workingset(i32* @array, i32 64)
  %24 = call i32 @check_workingset(i32* @array, i32 4096)
  %25 = load i64, i64* @tests_passed, align 8
  %26 = load i64, i64* @tests_run, align 8
  %27 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i64, i64* @tests_run, align 8
  %29 = load i64, i64* @tests_passed, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %0
  br label %35

32:                                               ; preds = %0
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  ret i32 %36
}

declare dso_local i32 @check_xa_err(i32*) #1

declare dso_local i32 @check_xas_retry(i32*) #1

declare dso_local i32 @check_xa_load(i32*) #1

declare dso_local i32 @check_xa_mark(i32*) #1

declare dso_local i32 @check_xa_shrink(i32*) #1

declare dso_local i32 @check_xas_erase(i32*) #1

declare dso_local i32 @check_insert(i32*) #1

declare dso_local i32 @check_cmpxchg(i32*) #1

declare dso_local i32 @check_reserve(i32*) #1

declare dso_local i32 @check_multi_store(i32*) #1

declare dso_local i32 @check_xa_alloc(...) #1

declare dso_local i32 @check_find(i32*) #1

declare dso_local i32 @check_find_entry(i32*) #1

declare dso_local i32 @check_account(i32*) #1

declare dso_local i32 @check_destroy(i32*) #1

declare dso_local i32 @check_move(i32*) #1

declare dso_local i32 @check_create_range(i32*) #1

declare dso_local i32 @check_store_range(i32*) #1

declare dso_local i32 @check_store_iter(i32*) #1

declare dso_local i32 @check_align(i32*) #1

declare dso_local i32 @check_workingset(i32*, i32) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
