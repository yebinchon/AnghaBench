; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"hugetlbfs\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to determine huge page size\0A\00", align 1
@hugetlbfs_test = common dso_local global i32 0, align 4
@MEMFD_HUGE_STR = common dso_local global i32 0, align 4
@memfd_str = common dso_local global i32 0, align 4
@mfd_def_size = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SHARE-DUP\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SHARE-MMAP\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SHARE-OPEN\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SHARE-FORK\00", align 1
@CLONE_FILES = common dso_local global i32 0, align 4
@CLONE_FS = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i32 0, align 4
@SHARED_FT_STR = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"memfd: DONE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = call i64 (...) @default_huge_page_size()
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %16
  store i32 1, i32* @hugetlbfs_test, align 4
  %24 = load i32, i32* @MEMFD_HUGE_STR, align 4
  store i32 %24, i32* @memfd_str, align 4
  %25 = load i64, i64* %7, align 8
  %26 = mul i64 %25, 2
  store i64 %26, i64* @mfd_def_size, align 8
  br label %33

27:                                               ; preds = %10
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = call i32 (...) @abort() #3
  unreachable

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %2
  %35 = call i32 (...) @test_create()
  %36 = call i32 (...) @test_basic()
  %37 = call i32 (...) @test_seal_write()
  %38 = call i32 (...) @test_seal_future_write()
  %39 = call i32 (...) @test_seal_shrink()
  %40 = call i32 (...) @test_seal_grow()
  %41 = call i32 (...) @test_seal_resize()
  %42 = call i32 @test_share_dup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @test_share_mmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 @test_share_open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @test_share_fork(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @CLONE_FILES, align 4
  %47 = load i32, i32* @CLONE_FS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CLONE_VM, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @spawn_idle_thread(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i8*, i8** @SHARED_FT_STR, align 8
  %53 = call i32 @test_share_dup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** @SHARED_FT_STR, align 8
  %55 = call i32 @test_share_mmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** @SHARED_FT_STR, align 8
  %57 = call i32 @test_share_open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** @SHARED_FT_STR, align 8
  %59 = call i32 @test_share_fork(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @join_idle_thread(i32 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @default_huge_page_size(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @test_create(...) #1

declare dso_local i32 @test_basic(...) #1

declare dso_local i32 @test_seal_write(...) #1

declare dso_local i32 @test_seal_future_write(...) #1

declare dso_local i32 @test_seal_shrink(...) #1

declare dso_local i32 @test_seal_grow(...) #1

declare dso_local i32 @test_seal_resize(...) #1

declare dso_local i32 @test_share_dup(i8*, i8*) #1

declare dso_local i32 @test_share_mmap(i8*, i8*) #1

declare dso_local i32 @test_share_open(i8*, i8*) #1

declare dso_local i32 @test_share_fork(i8*, i8*) #1

declare dso_local i32 @spawn_idle_thread(i32) #1

declare dso_local i32 @join_idle_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
