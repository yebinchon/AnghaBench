; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_builtin-test.c_shell_test__description.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_builtin-test.c_shell_test__description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i8*)* @shell_test__description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shell_test__description(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = trunc i64 %15 to i32
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @path__join(i8* %17, i32 %18, i8* %19, i8* %20)
  %22 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %13, align 4
  br label %49

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %32, %26
  %28 = load i32*, i32** %10, align 8
  %29 = call signext i8 @fgetc(i32* %28)
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %27

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i8* @fgets(i8* %34, i64 %35, i32* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i8* @strim(i8* %44)
  br label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i8* [ %45, %42 ], [ null, %46 ]
  store i8* %48, i8** %5, align 8
  store i32 1, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i8*, i8** %5, align 8
  ret i8* %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path__join(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local signext i8 @fgetc(i32*) #2

declare dso_local i8* @fgets(i8*, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strim(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
