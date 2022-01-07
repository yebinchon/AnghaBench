; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_alloc_anon_50M_check_swap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_alloc_anon_50M_check_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"memory.current\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"memory.swap.current\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @alloc_anon_50M_check_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_anon_50M_check_swap(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = call i64 @MB(i32 50)
  store i64 %14, i64* %6, align 8
  store i32 -1, i32* %11, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %26, %2
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = icmp ult i8* %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %8, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @cg_read_long(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @values_close(i64 %37, i64 %38, i32 3)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %31
  br label %56

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @cg_read_long(i8* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @values_close(i64 %50, i64 %51, i32 3)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %42
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %54, %41
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i64 @MB(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @cg_read_long(i8*, i8*) #1

declare dso_local i32 @values_close(i64, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
