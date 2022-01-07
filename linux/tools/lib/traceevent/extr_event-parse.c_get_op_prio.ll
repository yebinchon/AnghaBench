; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_get_op_prio.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_get_op_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"unknown op '%c'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"unknown op '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_op_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_op_prio(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %21 [
    i32 126, label %13
    i32 33, label %13
    i32 42, label %14
    i32 47, label %14
    i32 37, label %14
    i32 43, label %15
    i32 45, label %15
    i32 60, label %16
    i32 62, label %16
    i32 38, label %17
    i32 94, label %18
    i32 124, label %19
    i32 63, label %20
  ]

13:                                               ; preds = %8, %8
  store i32 4, i32* %2, align 4
  br label %76

14:                                               ; preds = %8, %8, %8
  store i32 6, i32* %2, align 4
  br label %76

15:                                               ; preds = %8, %8
  store i32 7, i32* %2, align 4
  br label %76

16:                                               ; preds = %8, %8
  store i32 9, i32* %2, align 4
  br label %76

17:                                               ; preds = %8
  store i32 11, i32* %2, align 4
  br label %76

18:                                               ; preds = %8
  store i32 12, i32* %2, align 4
  br label %76

19:                                               ; preds = %8
  store i32 13, i32* %2, align 4
  br label %76

20:                                               ; preds = %8
  store i32 16, i32* %2, align 4
  br label %76

21:                                               ; preds = %8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (i8*, ...) @do_warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %2, align 4
  br label %76

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 3, i32* %2, align 4
  br label %76

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36
  store i32 8, i32* %2, align 4
  br label %76

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  store i32 9, i32* %2, align 4
  br label %76

54:                                               ; preds = %49
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i32 10, i32* %2, align 4
  br label %76

63:                                               ; preds = %58
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 14, i32* %2, align 4
  br label %76

68:                                               ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 15, i32* %2, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 (i8*, ...) @do_warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %72, %67, %62, %53, %44, %35, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @do_warning(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
