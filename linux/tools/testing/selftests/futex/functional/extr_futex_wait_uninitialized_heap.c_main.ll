; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_uninitialized_heap.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_uninitialized_heap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"chv:\00", align 1
@optarg = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"mmap\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: Test the uninitialized futex value in FUTEX_WAIT\0A\00", align 1
@wait_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"pthread_create\0A\00", align 1
@RET_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"waiting %dus for child to return\0A\00", align 1
@WAIT_US = common dso_local global i32 0, align 4
@child_ret = common dso_local global i32 0, align 4
@child_blocked = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"child blocked in kernel\0A\00", align 1
@RET_FAIL = common dso_local global i32 0, align 4
@TEST_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @RET_PASS, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %31 [
    i32 99, label %18
    i32 104, label %20
    i32 118, label %27
  ]

18:                                               ; preds = %16
  %19 = call i32 @log_color(i32 1)
  br label %38

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @basename(i8* %23)
  %25 = call i32 @usage(i32 %24)
  %26 = call i32 @exit(i32 0) #3
  unreachable

27:                                               ; preds = %16
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @atoi(i32 %28)
  %30 = call i32 @log_verbosity(i32 %29)
  br label %38

31:                                               ; preds = %16
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @basename(i8* %34)
  %36 = call i32 @usage(i32 %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %27, %18
  br label %11

39:                                               ; preds = %11
  %40 = load i32, i32* @_SC_PAGESIZE, align 4
  %41 = call i64 @sysconf(i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @PROT_READ, align 4
  %44 = load i32, i32* @PROT_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MAP_PRIVATE, align 4
  %47 = load i32, i32* @MAP_ANONYMOUS, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @mmap(i32* null, i64 %42, i32 %45, i32 %48, i32 0, i32 0)
  store i8* %49, i8** @buf, align 8
  %50 = load i8*, i8** @buf, align 8
  %51 = icmp eq i8* %50, inttoptr (i64 -1 to i8*)
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %39
  %57 = call i32 (...) @ksft_print_header()
  %58 = call i32 @ksft_set_plan(i32 1)
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @basename(i8* %61)
  %63 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @wait_thread, align 4
  %65 = call i32 @pthread_create(i32* %9, i32* null, i32 %64, i32* null)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @RET_ERROR, align 4
  store i32 %71, i32* %7, align 4
  br label %84

72:                                               ; preds = %56
  %73 = load i32, i32* @WAIT_US, align 4
  %74 = call i32 @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @WAIT_US, align 4
  %76 = call i32 @usleep(i32 %75)
  %77 = load i32, i32* @child_ret, align 4
  store i32 %77, i32* %7, align 4
  %78 = load i64, i64* @child_blocked, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @RET_FAIL, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %72
  br label %84

84:                                               ; preds = %83, %68
  %85 = load i32, i32* @TEST_NAME, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @print_result(i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @log_color(i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @basename(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @log_verbosity(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @print_result(i32, i32) #1

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
