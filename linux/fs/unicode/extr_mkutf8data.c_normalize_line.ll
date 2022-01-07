; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_normalize_line.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_normalize_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.utf8cursor = type { i32 }

@buf2 = common dso_local global i8* null, align 8
@buf3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @normalize_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_line(%struct.tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utf8cursor, align 4
  store %struct.tree* %0, %struct.tree** %3, align 8
  %8 = load i8*, i8** @buf2, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** @buf3, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.tree*, %struct.tree** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @utf8cursor(%struct.utf8cursor* %7, %struct.tree* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %27, %15
  %17 = call i32 @utf8byte(%struct.utf8cursor* %7)
  store i32 %17, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %76

27:                                               ; preds = %19
  br label %16

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %76

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %76

38:                                               ; preds = %32
  %39 = load i8*, i8** @buf2, align 8
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8 -1, i8* %45, align 1
  %46 = load i8*, i8** @buf3, align 8
  store i8* %46, i8** %5, align 8
  %47 = load %struct.tree*, %struct.tree** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @utf8cursor(%struct.utf8cursor* %7, %struct.tree* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %76

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %64, %52
  %54 = call i32 @utf8byte(%struct.utf8cursor* %7)
  store i32 %54, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  %60 = load i8, i8* %58, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %76

64:                                               ; preds = %56
  br label %53

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %76

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %2, align 4
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %74, %68, %63, %51, %37, %31, %26, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @utf8cursor(%struct.utf8cursor*, %struct.tree*, i8*) #1

declare dso_local i32 @utf8byte(%struct.utf8cursor*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
