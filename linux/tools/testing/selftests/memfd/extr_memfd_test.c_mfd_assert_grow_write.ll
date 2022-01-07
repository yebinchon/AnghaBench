; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_assert_grow_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_assert_grow_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mfd_assert_grow_write.buf = internal global i8* null, align 8
@hugetlbfs_test = common dso_local global i64 0, align 8
@mfd_def_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"malloc(%zu) failed: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pwrite() failed: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mfd_assert_grow_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfd_assert_grow_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @hugetlbfs_test, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  %8 = load i32, i32* @mfd_def_size, align 4
  %9 = mul nsw i32 %8, 8
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** @mfd_assert_grow_write.buf, align 8
  %11 = load i8*, i8** @mfd_assert_grow_write.buf, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @mfd_def_size, align 4
  %15 = mul nsw i32 %14, 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %7
  %19 = load i32, i32* %2, align 4
  %20 = load i8*, i8** @mfd_assert_grow_write.buf, align 8
  %21 = load i32, i32* @mfd_def_size, align 4
  %22 = mul nsw i32 %21, 8
  %23 = call i32 @pwrite(i32 %19, i8* %20, i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @mfd_def_size, align 4
  %26 = mul nsw i32 %25, 8
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %18
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @mfd_def_size, align 4
  %34 = mul nsw i32 %33, 8
  %35 = call i32 @mfd_assert_size(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %6
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
