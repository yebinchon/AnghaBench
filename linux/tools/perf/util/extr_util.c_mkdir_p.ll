; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_mkdir_p.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_mkdir_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkdir_p(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 47
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %6)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %74

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %21

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 47)
  store i8* %31, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @stat(i8* %35, %struct.stat* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @mkdir(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  store i8 47, i8* %46, align 1
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %74

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %57, %51
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  br label %52

60:                                               ; preds = %52
  br label %29

61:                                               ; preds = %29
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @stat(i8* %62, %struct.stat* %6)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @mkdir(i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 0
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %50, %19, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @mkdir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
