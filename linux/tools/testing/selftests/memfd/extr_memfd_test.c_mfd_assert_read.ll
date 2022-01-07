; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_assert_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_mfd_assert_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"read() failed: %m\0A\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"mmap() failed: %m\0A\00", align 1
@PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mfd_assert_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfd_assert_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %8 = call i32 @read(i32 %6, i8* %7, i32 16)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %1
  %16 = load i32, i32* @mfd_def_size, align 4
  %17 = load i32, i32* @PROT_READ, align 4
  %18 = load i32, i32* @MAP_PRIVATE, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i8* @mmap(i32* null, i32 %16, i32 %17, i32 %18, i32 %19, i32 0)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** @MAP_FAILED, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %15
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @mfd_def_size, align 4
  %30 = call i32 @munmap(i8* %28, i32 %29)
  %31 = load i32, i32* @mfd_def_size, align 4
  %32 = load i32, i32* @PROT_READ, align 4
  %33 = load i32, i32* @PROT_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MAP_PRIVATE, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i8* @mmap(i32* null, i32 %31, i32 %34, i32 %35, i32 %36, i32 0)
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** @MAP_FAILED, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %27
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @mfd_def_size, align 4
  %47 = call i32 @munmap(i8* %45, i32 %46)
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
