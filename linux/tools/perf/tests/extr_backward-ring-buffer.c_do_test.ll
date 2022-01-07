; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_backward-ring-buffer.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_backward-ring-buffer.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"evlist__mmap: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, i32, i32*, i32*)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test(%struct.evlist* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @STRERR_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.evlist*, %struct.evlist** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @evlist__mmap(%struct.evlist* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @errno, align 4
  %25 = trunc i64 %15 to i32
  %26 = call i32 @str_error_r(i32 %24, i8* %17, i32 %25)
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @TEST_FAIL, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load %struct.evlist*, %struct.evlist** %6, align 8
  %31 = call i32 @evlist__enable(%struct.evlist* %30)
  %32 = call i32 (...) @testcase()
  %33 = load %struct.evlist*, %struct.evlist** %6, align 8
  %34 = call i32 @evlist__disable(%struct.evlist* %33)
  %35 = load %struct.evlist*, %struct.evlist** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @count_samples(%struct.evlist* %35, i32* %36, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.evlist*, %struct.evlist** %6, align 8
  %40 = call i32 @evlist__munmap(%struct.evlist* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %42

42:                                               ; preds = %29, %23
  %43 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @evlist__mmap(%struct.evlist*, i32) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @evlist__enable(%struct.evlist*) #2

declare dso_local i32 @testcase(...) #2

declare dso_local i32 @evlist__disable(%struct.evlist*) #2

declare dso_local i32 @count_samples(%struct.evlist*, i32*, i32*) #2

declare dso_local i32 @evlist__munmap(%struct.evlist*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
