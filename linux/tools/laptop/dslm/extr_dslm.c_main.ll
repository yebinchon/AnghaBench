; ModuleID = '/home/carl/AnghaBench/linux/tools/laptop/dslm/extr_dslm.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/laptop/dslm/extr_dslm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't open %s, because: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Waiting %d seconds for the system to settle down to 'normal'\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Not waiting for system to settle down\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@ender = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 60, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 3
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  br label %28

26:                                               ; preds = %15
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %18
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = load i32, i32* @O_NONBLOCK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @open(i8* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i8* @strerror(i32 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %39)
  %41 = call i32 @exit(i32 -1) #3
  unreachable

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sleep(i32 %48)
  br label %52

50:                                               ; preds = %42
  %51 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* @SIGINT, align 4
  %54 = load i32, i32* @ender, align 4
  %55 = call i32 @signal(i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @measure(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @close(i32 %58)
  ret i32 0
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @measure(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
