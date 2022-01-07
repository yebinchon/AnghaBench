; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8ncursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8ncursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8cursor = type { i8*, i64, i8*, i8*, i64, i32*, i32*, i32*, %struct.utf8data* }
%struct.utf8data = type { i32 }

@STOPPER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8ncursor(%struct.utf8cursor* %0, %struct.utf8data* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.utf8cursor*, align 8
  %7 = alloca %struct.utf8data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.utf8cursor* %0, %struct.utf8cursor** %6, align 8
  store %struct.utf8data* %1, %struct.utf8data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.utf8data*, %struct.utf8data** %7, align 8
  %11 = icmp ne %struct.utf8data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %58

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %58

17:                                               ; preds = %13
  %18 = load %struct.utf8data*, %struct.utf8data** %7, align 8
  %19 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %20 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %19, i32 0, i32 8
  store %struct.utf8data* %18, %struct.utf8data** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %23 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %25 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %24, i32 0, i32 7
  store i32* null, i32** %25, align 8
  %26 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %27 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %29 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %32 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %34 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** @STOPPER, align 8
  %36 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %37 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @STOPPER, align 8
  %39 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %40 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.utf8cursor*, %struct.utf8cursor** %6, align 8
  %42 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %58

47:                                               ; preds = %17
  %48 = load i64, i64* %9, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 %53, 192
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %58

57:                                               ; preds = %50, %47
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %56, %46, %16, %12
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
